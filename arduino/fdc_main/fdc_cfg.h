#ifndef CFG_H
#define CFG_H

#define CFG_MASTER_DEBUG_ENABLE true

#define CFG_SERIAL_BAUD_RATE 115200
#define CFG_TIMERONE_PERIOD 250000 // 250,000 us

#define CFG_SYSTEM_FIRST_STATE SYSTEM_STATE_COMPONENT_TEST // Refer to sys_state_t definition
#define CFG_SYSTEM_FIRST_STATE SYSTEM_STATE_WAIT_BUTTON // Refer to sys_state_t definition

#define CFG_COMPONENT_TEST_STATE_LED_BLINK_PERIOD 4
#define CFG_WAIT_BUTTON_STATE_LED_BLINK_PERIOD    2
#define CFG_WAIT_SONAR_STATE_LED_BLINK_PERIOD     1

#define CFG_ESC_CONTROL_NEUTRAL_ON_TIME 1500 // 1,500 us
#define CFG_SONAR_NO_OBSTACLE_PULSE_WIDTH 3000

#define CFG_TIMER2_APP_PRESCALER 16

// Pin configuration
// NOTE: If any of these macros share value with another, something is very wrong
#define CFG_BUTTON_LED_PIN 7
#define CFG_BUTTON_INPUT_PIN 6
#define CFG_ENCODER_PIN_A 3
#define CFG_ENCODER_PIN_B 2
#define CFG_ESC_CONTROL_PIN 10
#define CFG_HC_SR04_TRIG_PIN  12
#define CFG_HC_SR04_ECHO_PIN  11

#endif // CFG_H
