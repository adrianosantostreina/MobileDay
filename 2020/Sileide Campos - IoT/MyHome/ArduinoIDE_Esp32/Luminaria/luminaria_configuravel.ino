#include "WiFiUdp.h"
#include <ESP8266WiFi.h>
#include <FS.h>
#include <Espalexa.h>

WiFiUDP conexao;
Espalexa espalexa;

char pacote2[9];
int r,g,b,rp=2,gp=0,bp=4,lamp=1;
int ip1=0,ip2=0,ip3=0,ip4=0;
IPAddress gateway(192,168,0,1);
IPAddress subnet(255,255,255,0);
String ssid = "";
String senha = "";
String strIp ="";
unsigned int localPort = 3333;

void colorLightChanged(uint8_t brightness, uint32_t rgb);
void colorContro(int brilho,int pr, int pg,int pb);

void writeFile(String state, String path) { 
  File rFile = SPIFFS.open(path,"w+"); 
  if(!rFile){
    Serial.println("Erro ao abrir arquivo!");
  } else {
    rFile.println(state);
    Serial.print("gravou estado: ");
    Serial.println(state);
  }
  rFile.close();
}
 
String readFile(String path) {
  File rFile = SPIFFS.open(path,"r");
  if (!rFile) {
    Serial.println("Erro ao abrir arquivo!");
  }
  String content = rFile.readStringUntil('\r'); //desconsidera '\r\n'
  Serial.print("leitura de estado: ");
  Serial.println(content);
  rFile.close();
  return content;
}
void openFS(void){
  if(!SPIFFS.begin()){
    Serial.println("\nErro ao abrir o sistema de arquivos");
  } else {
    Serial.println("\nSistema de arquivos aberto com sucesso!");
  }
}

void gravarDadosWIFI(){
    char pacote[107];
    int tamanhoPacote = 0;
    while(tamanhoPacote <2){
      tamanhoPacote = conexao.parsePacket();
    }
    conexao.read(pacote,107);
    ssid =  (String(pacote).substring(0,32));
    senha = (String(pacote).substring(32,95));  
    strIp = (String(pacote).substring(95,107));
    ssid.trim();
    senha.trim();
    strIp.trim();
    if((ssid !="")&&(senha !="")){
        Serial.print("gravando configuracoes ssi senha ip");
        writeFile("serve", "/mode.txt");
        writeFile(ssid, "/id.txt");
        writeFile(senha, "/senha.txt");
        writeFile(strIp, "/ip.txt");
    }
    else{
        Serial.print("erro ao capturar os dados de ssid senha e ip");
    }     
}

void confWifi(String modo){
  Serial.println(modo);
  delay(50);
  if(modo =="host"){
    Serial.println("inicando como host");
    WiFi.mode(WIFI_AP);
    WiFi.softAP("LUMINARIA I.S V1", "");
    delay(2000);
    conexao.begin(3333);
    gravarDadosWIFI();
  }
  if(modo=="server"){
  Serial.println("inicando como escravo");
  ssid = readFile("/id.txt");  
  senha = readFile("/senha.txt");
  strIp = readFile("/ip.txt");
  ip1 = (strIp.substring(0,3)).toInt();
  ip2 = (strIp.substring(3,6)).toInt();
  ip3 = (strIp.substring(6,9)).toInt();
  ip4 = (strIp.substring(9,12)).toInt();
  Serial.print("conectando a rede: ");
  Serial.println(ssid);
  IPAddress ip(ip1,ip2,ip3,ip4);
  Serial.println(ip);
  if (!WiFi.config(ip, gateway, subnet)) {
    Serial.println("STA Failed to configure");
  }
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid,senha);
  for( int x =0; x<=25 ;x++){ 
    if(x==25){
      Serial.println("Falha na conexao... inciando como host");
      confWifi("host");  
    }
    if (WiFi.status() != WL_CONNECTED){
      Serial.print("erro na conexao ");
      Serial.println(x);
      WiFi.begin(ssid,senha);
      delay(10000);
      
      
    }else{
      break;
    }
  }
  Serial.println("Conectado!");
  Serial.println(WiFi.localIP());
  conexao.begin(localPort);
  espalexa.addDevice("Luminária", colorLightChanged);
  espalexa.begin();
    
  }
}



void setup() {
  pinMode(lamp,OUTPUT);
  pinMode(rp,OUTPUT);
  pinMode(gp,OUTPUT);
  pinMode(bp,OUTPUT);
  Serial.begin(9600);
  analogWrite(rp,1023);
  analogWrite(gp,1023);
  analogWrite(bp,1023);
  openFS();
  Serial.println("inicialiazando");
  confWifi(readFile("/mode.txt"));


}

void loop() {
  if (WiFi.waitForConnectResult() != WL_CONNECTED and readFile("/mode.txt") =="serve" ){
    Serial.print("erro na conexao");
    delay(200);
  }
  espalexa.loop();
  int tamanhoPacote = conexao.parsePacket();
  if(tamanhoPacote == 9){
    conexao.read(pacote2,9);
    r = ((String(pacote2).substring(0,3)).toInt());
    g = ((String(pacote2).substring(3,6)).toInt());
    b = ((String(pacote2).substring(6,9)).toInt());
    colorControl(255,r,g,b);

    if(pacote2 == "##RESET##"){
      writeFile("host", "/mode.txt");
    }
  }
}

void colorLightChanged(uint8_t brightness, uint32_t rgb) {  
  r = ((rgb >> 16) & 0xFF);
  g = ((rgb >>  8) & 0xFF);
  b = (rgb & 0xFF);
  colorContro(brightness,r,g,b);
}

void colorControl(int brilho, int pr, int pg, int pb){
      r=1023-(map(pr, 0, brilho, 0, 1023));
      g=1023-(map(pg, 0, brilho, 0, 1023));
      b=1023-(map(pb, 0, brilho, 0, 1023));
      analogWrite(rp, r);
      analogWrite(gp, g);
      analogWrite(bp, b);
}
