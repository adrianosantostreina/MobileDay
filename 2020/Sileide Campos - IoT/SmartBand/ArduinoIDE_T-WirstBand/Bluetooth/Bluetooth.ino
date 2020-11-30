#include <BluetoothSerial.h>
#include <Wire.h>

BluetoothSerial SerialBT;

void setup() {  
  SerialBT.begin("ESP32");  
}

void loop() {  
  if (pulseIn(2, HIGH) > 255000) {
    SerialBT.print("1");  
  }
}
