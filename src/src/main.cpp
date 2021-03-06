#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <Encoder.h>
#include <Bounce2.h>
#include <DmxSimple.h>
#include "Axis.h"

#define SCREEN_ADDRESS 0x3C

#define DEBOUNCEINTERVAL 20

Adafruit_SSD1306 display(128, 64, &Wire, -1);

Encoder encoder(2, 3);
Encoder encoderX(5, 6);
Encoder encoderY(7, 8);
Encoder encoderZ(9, 10);

Bounce selectButton = Bounce();
Bounce buttonXUp = Bounce();
Bounce buttonXDown = Bounce();
Bounce buttonYUp = Bounce();
Bounce buttonYDown = Bounce();
Bounce buttonZUp = Bounce();
Bounce buttonZDown = Bounce();

Axis axisX, axisY, axisZ;

int32_t encoderValue  = -999;

enum State_enum {IDLE, WAIT_FOR_BUTTON, WAIT_FOR_BUTTON_TIMEOUT, SET_DMX_CHANNEL};
uint8_t state = IDLE;
unsigned long stateEnteredMillis;
unsigned long waitForButtonTimeout = 1000;
Axis* axisSetup;

void displayValues() {
    display.clearDisplay();
    display.invertDisplay(false);

    display.setTextSize(1); // Draw 2X-scale text
    display.setTextColor(SSD1306_WHITE);
    display.setCursor(0, 0);

    display.print(axisX.getValue());
    display.print(" => ");
    display.print(axisX.getDMXValue());
    display.print(" (ch: ");
    display.print(axisX.getDMXChannel());
    display.print(")");
    display.println();

    display.print(axisY.getValue());
    display.print(" => ");
    display.print(axisY.getDMXValue());
    display.print(" (ch: ");
    display.print(axisY.getDMXChannel());
    display.print(")");
    display.println();

    display.print(axisZ.getValue());
    display.print(" => ");
    display.print(axisZ.getDMXValue());
    display.print(" (ch: ");
    display.print(axisZ.getDMXChannel());
    display.print(")");
    display.println();

    display.display();      // Show initial text
}

void sendDMX() {
    DmxSimple.write(axisX.getDMXChannel(), axisX.getDMXValue());
    DmxSimple.write(axisY.getDMXChannel(), axisY.getDMXValue());
    DmxSimple.write(axisZ.getDMXChannel(), axisZ.getDMXValue());
}

void displayInfoMsg(String msg) {
    display.clearDisplay();
    display.setTextSize(2);
    display.invertDisplay(true);
    display.setCursor(0, 24);
    display.println(msg);
    display.display();
}

void stateMachineRun() {
  switch (state)
  {


  case IDLE:
    // send DMX Values if one axis has changed
    if (axisX.changed() || axisY.changed() || axisZ.changed()) {
      displayValues();
      sendDMX();
    }

    if (buttonXUp.fallingEdge() || buttonXDown.fallingEdge() || buttonYUp.fallingEdge() || buttonYDown.fallingEdge() || buttonZUp.fallingEdge() || buttonZDown.fallingEdge()) {
      stateEnteredMillis = millis();
      state = WAIT_FOR_BUTTON;
    }
    break;



  case WAIT_FOR_BUTTON:
    displayInfoMsg("Wait For Button");
    if(stateEnteredMillis + waitForButtonTimeout < millis() || buttonXUp.risingEdge() || buttonXDown.risingEdge() || buttonYUp.risingEdge() || buttonYDown.risingEdge() || buttonZUp.risingEdge() || buttonZDown.risingEdge()) {
      state = WAIT_FOR_BUTTON_TIMEOUT;
      break;
    }
    // check if second btn is pressed:
    if (buttonXUp.read() == LOW || buttonXDown.read() == LOW) {
      if (buttonXUp.fallingEdge() || buttonXDown.fallingEdge() ) {
        axisSetup = &axisX;
        displayInfoMsg(axisSetup->name);
        encoder.write(axisSetup->getDMXChannel() * 4);
        state = SET_DMX_CHANNEL;
        break;
      }
    }
    else if (buttonYUp.read() == LOW || buttonYDown.read() == LOW) {
      if (buttonYUp.fallingEdge() || buttonYDown.fallingEdge() ) {
        axisSetup = &axisY;
        displayInfoMsg(axisSetup->name);
        encoder.write(axisSetup->getDMXChannel() * 4);
        state = SET_DMX_CHANNEL;
        break;
      }
    }
    else if (buttonZUp.read() == LOW || buttonZDown.read() == LOW) {
      if (buttonZUp.fallingEdge() || buttonZDown.fallingEdge() ) {
        axisSetup = &axisZ;
        displayInfoMsg(axisSetup->name);
        encoder.write(axisSetup->getDMXChannel() * 4);
        state = SET_DMX_CHANNEL;
        break;
      }
    }

    break;



  case WAIT_FOR_BUTTON_TIMEOUT:
    displayInfoMsg("timeout");
    if (buttonXUp.read() == LOW) {
      displayInfoMsg("set X MAX");
      axisX.setMaxValue();
    }
    if (buttonXDown.read() == LOW) {
      displayInfoMsg("set X min");
      axisX.setMinValue();
    }
    if (buttonYUp.read() == LOW) {
      displayInfoMsg("set Y MAX");
      axisY.setMaxValue();
    }
    if (buttonYDown.read() == LOW) {
      displayInfoMsg("set Y min");
      axisY.setMinValue();
    }
    if (buttonZUp.read() == LOW) {
      displayInfoMsg("set Z MAX");
      axisZ.setMaxValue();
    }
    if (buttonZDown.read() == LOW) {
      displayInfoMsg("set Z min");
      axisZ.setMinValue();
    }
    sendDMX();
    displayValues();
    state = IDLE;
    break;
    


  case SET_DMX_CHANNEL:
      if (buttonXUp.risingEdge() || buttonXDown.risingEdge() || buttonYUp.risingEdge() || buttonYDown.risingEdge() || buttonZUp.risingEdge() || buttonZDown.risingEdge()) {
        displayValues();
        state = IDLE;
      }

      int32_t newencoderValue;
      newencoderValue = encoder.read() / 4;
      if(newencoderValue != encoderValue ){
        encoderValue = newencoderValue;
        axisSetup->setDMXChannel(constrain(encoderValue, 0, 512));
        display.clearDisplay();
        display.setCursor(0,0);
        display.println(axisSetup->name);
        display.print("ch: ");
        display.println(axisSetup->getDMXChannel());
        display.print("enc: ");
        display.println(encoderValue);
        display.display();
      }

    break;
  
  default:
    break;
  }
}

void setup() {
  Serial.begin(115200);
  DmxSimple.usePin(17);
  //DmxSimple.maxChannel(3);

  axisX.setDMXChannel(1);
  axisY.setDMXChannel(2);
  axisZ.setDMXChannel(3);
  axisX.name = "x-axis";
  axisY.name = "y-axis";
  axisZ.name = "z-axis";


  selectButton.attach(4, INPUT_PULLUP);
  selectButton.interval(DEBOUNCEINTERVAL);
  buttonXUp.attach(11, INPUT_PULLUP);
  buttonXUp.interval(DEBOUNCEINTERVAL);
  buttonXDown.attach(12, INPUT_PULLUP);
  buttonXDown.interval(DEBOUNCEINTERVAL);
  buttonYUp.attach(20, INPUT_PULLUP);
  buttonYUp.interval(DEBOUNCEINTERVAL);
  buttonYDown.attach(21, INPUT_PULLUP);
  buttonYDown.interval(DEBOUNCEINTERVAL);
  buttonZUp.attach(22, INPUT_PULLUP);
  buttonZUp.interval(DEBOUNCEINTERVAL);
  buttonZDown.attach(23, INPUT_PULLUP);
  buttonZDown.interval(DEBOUNCEINTERVAL);

  // SSD1306_SWITCHCAPVCC = generate display voltage from 3.3V internally
  if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
    Serial.println(F("SSD1306 allocation failed"));
    for(;;); // Don't proceed, loop forever
  }
}

void loop() {
  axisX.setValue(encoderX.read() / 4);
  axisY.setValue(encoderY.read() / 4);
  axisZ.setValue(encoderZ.read() / 4);

  selectButton.update();
  buttonXUp.update();
  buttonXDown.update();
  buttonYUp.update();
  buttonYDown.update();
  buttonZUp.update();
  buttonZDown.update();

  stateMachineRun();
}

