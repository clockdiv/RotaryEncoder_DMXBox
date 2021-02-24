#include <Arduino.h>
#include <Encoder.h>

class Axis {
    private:

    int32_t encoderValue = -999;
    int32_t minEncoderValue = 0;
    int32_t maxEncoderValue = 600; 
    uint8_t dmxValue = 0;
    bool hasChanged = false;
    uint16_t dmxChannel = 0;

    void mapDMXValue() { dmxValue = map(constrain(encoderValue, minEncoderValue, maxEncoderValue), minEncoderValue, maxEncoderValue, 0, 255); }

    public:
    String name;

    void setValue(int32_t encoderValueNew) {
        if(encoderValueNew != encoderValue) {
            encoderValue = encoderValueNew;
            hasChanged = true;
            mapDMXValue();
        }
    }

    void setMinValue() { minEncoderValue = encoderValue; mapDMXValue(); }
    void setMaxValue() { maxEncoderValue = encoderValue; mapDMXValue(); }
    int32_t getValue() { return encoderValue; }
    uint8_t getDMXValue() { return dmxValue; }
    uint16_t getDMXChannel() {return dmxChannel; }
    void setDMXChannel(uint16_t ch) { dmxChannel = ch; }

    bool changed() {
        if(hasChanged) {
            hasChanged = false;
            return true;
        } else {
            return false;
        }
    }
};