#include "Axis.h"

void Axis::mapDMXValue() { 
    dmxValue = map(constrain(encoderValue, minEncoderValue, maxEncoderValue), minEncoderValue, maxEncoderValue, 0, 255); 
}

void Axis::setValue(int32_t encoderValueNew) {
    int diff = encoderValueNew - encoderValue;
    if (diff == 0) return;

    clampedAxisValue = constrain(clampedAxisValue + diff, minEncoderValue, maxEncoderValue);
    encoderValue = encoderValueNew;
    hasChanged = true;

    mapDMXValue();
}


bool Axis::changed() {
    if(hasChanged) {
        hasChanged = false;
        return true;
    } else {
        return false;
    }
}