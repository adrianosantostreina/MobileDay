#include <ESP8266WiFi.h>
#include <WiFiUdp.h>
#include <Espalexa.h>

#define button1 2
#define rele1 4
bool Status1 = 0 ;

const char* ssid = "STARK 2.4G";
const char* senha = "01550123";
unsigned int localPort = 3333;
char pacote[3];


IPAddress ip(192,168,0,14);
IPAddress gateway(192,168,0,1);
IPAddress subnet(255,255,255,0);

void firstLightChanged(uint8_t brightness);


WiFiUDP conexao;
Espalexa espalexa;


void setup() {
 pinMode(button1,INPUT);
 pinMode(rele1,OUTPUT);
 Serial.begin(9600);
 Serial.print("iniciar conecaxao");
 
 if (!WiFi.config(ip, gateway, subnet)) {
    Serial.println("STA Failed to configure");
  }
  
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid,senha);
  while(WiFi.waitForConnectResult() != WL_CONNECTED){
    Serial.println("deu merda na conxao");
    delay(200);
    WiFi.begin(ssid,senha);
  }
  Serial.println(WiFi.localIP());
  conexao.begin(localPort);
  espalexa.addDevice("Luz", firstLightChanged);
  espalexa.begin();
  Serial.println("conectado");

}

void loop() {
  
  digitalWrite(rele1,Status1);
  espalexa.loop();
  int tamanhoPacote = conexao.parsePacket();
  if(digitalRead(button1) == 0){
      Serial.println("button0");
    if (digitalRead(button1) == 1) {
      Serial.println("button1");
      Status1 = !Status1;
    }
  }
  if(tamanhoPacote == 3){
    String recebe;
    recebe = conexao.readString();
    Serial.println(recebe);
    if (recebe == "OON"){
      Status1 = 0;
      Serial.println("ligou");
    }else if (recebe == "OFF"){
      Status1 = 1;
      Serial.println("desligou");
    }  
  }

  
  if (WiFi.status() != WL_CONNECTED){
    WiFi.begin(ssid,senha);
    Serial.println("Desconectado");
    delay(200);
  }
    
}

void firstLightChanged(uint8_t brightness) {
    Serial.print("Device 1 changed to ");
    if (brightness) {
      Serial.print("ON, brightness ");
      Serial.println(brightness);
      Status1 = 0;
    }
    else  {
      Serial.println("OFF");
      Status1 = 1;
    }
}
