#include <Keypad.h>
 
const byte ROWS = 4;    
const byte COLS = 4;  

char keys[ROWS][COLS] = {
  {'1','2','3','A'},
  {'4','5','6','B'},
  {'7','8','9','C'},
  {'*','0','#','D'}
};
 
byte rowPins[ROWS] = {6, 7, 8, 9};   // R1, R2, R3, R4
byte colPins[COLS] = {5, 4, 3, 2};   // C1, C2, C3, C4 

Keypad keypad = Keypad( makeKeymap(keys), rowPins, colPins, ROWS, COLS );

int R = 13;
int G = 12;
int B = 11;



void setup() {
  // put your setup code here, to run once:
  pinMode(R, OUTPUT);   //set pin as output , blue led
  pinMode(G, OUTPUT);   //set pin as output , red led
  pinMode(B, OUTPUT);   //set pin as output , yellow led
  Serial.begin(9600);    //start serial communication @9600 bps
}

void loop() {
  // put your main code here, to run repeatedly:

  if(Serial.available()){

  char val = Serial.read();

  if(val == 'g'){
    analogWrite(R,0);
    analogWrite(G,255);
    analogWrite(B,0);

    delay(1000);

    analogWrite(R,0);
    analogWrite(G,0);
    analogWrite(B,0);
  
  }

  else if(val == 'r'){
    analogWrite(R,255);
    analogWrite(G,0);
    analogWrite(B,0);

    delay(1000);

    analogWrite(R,0);
    analogWrite(G,0);
    analogWrite(B,0);
  
  }

  else if(val == 'b'){
    analogWrite(R,0);
    analogWrite(G,0);
    analogWrite(B,255);

    delay(1000);

    analogWrite(R,0);
    analogWrite(G,0);
    analogWrite(B,0);
  
  }
  
  }

  char key = keypad.getKey(); 
  if (key) {
    switch(key) {
      case 'A': 
        Serial.write(10);
        break;
      case 'B': 
        Serial.write(9);
        break;
      case 'C':
        Serial.write(12);
        break;
      case 'D':
        Serial.write(13);
        break;
      case '2':
        Serial.write(2);
        break;
      case '4':
        Serial.write(4);
        break;
      case '6':
        Serial.write(6);
        break;
      case '8':
        Serial.write(8);
        break;
      default:
        Serial.println(key);
        break;
    }
  }
  
}
