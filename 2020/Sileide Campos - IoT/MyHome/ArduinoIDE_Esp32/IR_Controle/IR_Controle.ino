#include <M5StickC.h>
#include <WiFi.h>
#include <WiFiUdp.h>
#include <IRremoteESP8266.h>
#include <IRsend.h>

const char* ssid = "STARK 2.4G";
const char* senha = "01550123";
unsigned int localPort = 3333;
const uint16_t kIrLed = 9;
int led = 10;
char pacote[4];
int comando;
String aparelho;
unsigned long tv[48] = {0xFFFFFFFF,0x20FDD00F,0x20DF9C63,0x20DFC23D,0x20DF1EE1,0x20DFD02F,0x20DF8877,
                       0x20DF48B7,0x20DFC837,0x20DF28D7,0x20DFA857,0x20DF6897,0x20DFE817,0x20DF18E7,
                       0x20DF9867,0x20DF32CD,0x20DF08F7,0x20DF58A7,0x20DF40BF,0x20DFC03F,0x20DF7887,
                       0x20DF55AA,0x20DF906F,0x20DF00FF,0x20DF807F,0x20DF6A95,0x20DF3EC1,0x20DF3AC5,
                       0x20DFD52A,0x20DFF50A,0x20DF02FD,0x20DFE01F,0x20DF609F,0x20DF827D,0x20DF22DD,
                       0x20DF14EB,0x20DFDA25,0x20DFDD22,0x20DFBD42,0x20DF8D72,0x20DFF10E,0x20DF0DF2,
                       0x20DF5DA2,0x20DF718E,0x20DF4EB1,0x20DF8E71,0x20DFC639,0x20DF8679};
                       
unsigned long net[34] ={0xE17A24DB,0xE17A48B7,0xE17A847B,0xE17AC837,0xE17AB04F,0xE17A708F,0xE17AF807,0xE17A8877,
                        0xE17A08F7,0xE17A58A7,0xE17A50AF,0xE17A28D7,0xE17AD02F,0xE17AD827,0xE17A38C7,0xE17A30CF,
                        0xE17AA857,0xE17A6897,0xE17AE817,0xE17A18E7,0xE17A9867,0xE17A7887,0xE17A807F,0xE17A40DF,
                        0xE17AC03F,0xE17A20DF,0xE17AA05F,0xE17A6097,0xE17AE01F,0xE17A10EF,0xE17A906F,0xE17AB847,
                        0xE17A00FF,0xE17AC43B};
IRsend irsend(kIrLed);
IPAddress ip(192,168,0,12);
IPAddress gateway(192,168,0,1);
IPAddress subnet(255,255,255,0);
WiFiUDP conexao;
  
void setup() {
  Serial.begin(9600);
  
  pinMode(led,OUTPUT);
  pinMode(37,INPUT);

  irsend.begin();

  if (!WiFi.config(ip, gateway, subnet)) {
    Serial.println("STA Failed to configure");
  }
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid,senha);
  while(WiFi.waitForConnectResult() != WL_CONNECTED){
    digitalWrite(led,0);
    Serial.println("Problema ao conectar.");
    WiFi.begin(ssid,senha);
    delay(200);
    digitalWrite(led,1);
    delay(50);
  }
  Serial.println("Conexão estabelecida.");
    
  conexao.begin(localPort); 
  digitalWrite(led,0);
}

void loop() {
  int tamanhoPacote = conexao.parsePacket();
  if(tamanhoPacote > 0){
    Serial.println(tamanhoPacote);
    conexao.read(pacote, 4);
    Serial.print(pacote);
    aparelho = ((String(pacote).substring(0,2)));
    comando  = ((String(pacote).substring(2,4)).toInt());
    if (aparelho == "tv"){
      digitalWrite(led,1);
      irsend.sendNEC(tv[comando]);
      delay(20);
      digitalWrite(led,0);      
    }else if (aparelho == "nt"){
      digitalWrite(led,1);
      irsend.sendNEC(net[comando]);
      delay(20);
      digitalWrite(led,0);
    }else{
      Serial.print("comando não reconhecido");
    }

    aparelho      = "";
    comando       = 0;
    tamanhoPacote = 0;
  }
}
