<html>
<head>
<style>
</style>
</head>
<body>
<h1 id="h1">Code</h1>

<textarea id="ta">

#include <LiquidCrystal_I2C.h>

#include <Wire.h>

#define out 2
#define potin 8
int potout = A3;

LiquidCrystal_I2C lcd(0x27, 16,2);



void setup() {
  // put your setup code here, to run once:
  pinMode(2, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(4, INPUT_PULLUP);  
  lcd.init();
  lcd.backlight();
}

void loop() {
  // put your main code here, to run repeatedly
digitalWrite(2, HIGH);
analogWrite(8, 3);
 lcd.setCursor(0, 0);
 lcd.print("Volt: ");
lcd.setCursor(1, 1);
lcd.print(analogRead(potout) / 003.007);
lcd.print(" / 300=3v");
delay(1000);

}

</textarea>
</body>
</html>
