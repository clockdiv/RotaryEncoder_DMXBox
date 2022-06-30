#include <Arduino.h>
#include <Encoder.h>

class Axis {
private:
    int32_t encoderValue = 0;
    int32_t clampedAxisValue = 0;          // clamped value of axis
    int32_t minEncoderValue = 0;
    int32_t maxEncoderValue = 3000; 
    uint8_t dmxValue = 0;
    bool hasChanged = false;
    uint16_t dmxChannel = 0;
    void mapDMXValue();

public:
    String name;

    void setValue(int32_t encoderValueNew);

    void setMinValue() { minEncoderValue = encoderValue; mapDMXValue(); }
    void setMaxValue() { maxEncoderValue = encoderValue; mapDMXValue(); }
    int32_t getValue() { return encoderValue; }
    int32_t getClampedAxisValue() { return clampedAxisValue; }
    uint8_t getDMXValue() { return dmxValue; }
    uint16_t getDMXChannel() {return dmxChannel; }
    void setDMXChannel(uint16_t ch) { dmxChannel = ch; }
    bool changed();
};