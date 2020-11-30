#include <M5Stack.h>
#include <Wire.h>
#include <WiFi.h>
#include <HTTPClient.h>
#include <PN532_I2C.h>
#include <PN532.h>

PN532_I2C pn532i2c(Wire);
PN532 nfc(pn532i2c);

#define rele 26
String ID;
const char* ssid  = "STARK 2.4G";
const char* senha = "01550123";
String serverName = "http://192.168.0.102:8080/datasnap/rest/Ty/";

void setup(void){
  M5.begin();
  M5.Power.begin();
  M5.Lcd.fillScreen(PINK);
  M5.Lcd.setCursor(10, 10);
  M5.Lcd.setTextColor(BLACK);
  M5.Lcd.setTextSize(2);
  M5.Lcd.printf("Laboratório trancado");
  
  Serial.begin(115200);
  pinMode(rele, OUTPUT);  
  digitalWrite(25, LOW);
  digitalWrite(rele, HIGH);
  
  WiFi.begin(ssid, senha); 
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Conectando...");
    WiFi.begin(ssid, senha);
  } 
  Serial.println("Conectado!"); 
  Serial.println(WiFi.localIP());
  
  nfc.begin();
  
  uint32_t versiondata = nfc.getFirmwareVersion();
  if (! versiondata) {
    Serial.print("Placa PN53x nao encontrada...");
    while (1); // halt
  }

  Serial.print("Encontrado chip PN5"); Serial.println((versiondata >> 24) & 0xFF, HEX);
  Serial.print("Firmware versao: "); Serial.print((versiondata >> 16) & 0xFF, DEC);
  Serial.print('.'); Serial.println((versiondata >> 8) & 0xFF, DEC);

  nfc.setPassiveActivationRetries(0xFF);
  nfc.SAMConfig();

  Serial.println("Aguardando cartao ISO14443A...");
  Serial.println("");
}

void loop(void) {
  boolean success;
  uint8_t uid[] = { 0, 0, 0, 0, 0, 0, 0 };
  uint8_t uidLength;

  if (nfc.readPassiveTargetID(PN532_MIFARE_ISO14443A, &uid[0], &uidLength)) {    
    Serial.println("Cartao detectado!");
    Serial.print("Tamanho do UID: "); Serial.print(uidLength, DEC); Serial.println(" bytes");
    Serial.print("UID: ");
    for (uint8_t i = 0; i < uidLength; i++) {
      Serial.print(" 0x"); Serial.print(uid[i], HEX);      
      ID = ID + uid[i];
    }
    Serial.println("");
    Serial.println("*"+ID+"*");

    if (ID == "416023958960128") {
      M5.Lcd.setCursor(10, 50);          
      M5.Lcd.fillScreen(GREEN);      
      M5.Lcd.setTextColor(BLACK);
      M5.Lcd.setTextSize(2);      
      M5.Lcd.setCursor(10, 50);   
      M5.Lcd.printf("ACESSO LIBERADO");
      
      //para abrir a porta, o relé vai ativar
      digitalWrite(rele, LOW); //ativar
      enviarNotificacaoServidor("Acessou Escritorio: "+ID);
      delay(3000);
      digitalWrite(rele, HIGH); //desativa             
    }else{
      M5.Lcd.fillScreen(RED);      
      M5.Lcd.setTextColor(BLACK);
      M5.Lcd.setTextSize(2);      
      M5.Lcd.setCursor(10, 50);    
      M5.Lcd.printf("ACESSO NEGADO");
      enviarNotificacaoServidor("Tentou Acessar Escritorio: "+ID);
      delay(1000);
    }
        
    ID.clear();
    M5.Lcd.clear();        
    Serial.println("");
    Serial.println("");
  } else {    
    Serial.println("Timed out waiting for a card");
  }
}

void enviarNotificacaoServidor( String lTag ){
  if ((WiFi.status() == WL_CONNECTED)) {
    HTTPClient http;
    http.begin(serverName+"Nootification");    
    http.addHeader("Content-Type", "application/json");    
    int httpCode = http.POST("{\"mensagem\":\""+lTag+"\"}");    
    if (httpCode > 0) {
      String payload = http.getString();
      Serial.println(payload);
      /*http.begin(serverName+"Debito");    
      int httpCode = http.POST("{\"mensagem\":\""+lTag+"\"}");
      if (httpCode > 0) {
        String payload = http.getString();
        Serial.println(payload);
      }*/
    }    
    http.end();
  }  
}
