/* scruncher.ino
 *  
 * chaotic system driven by white noise
 *  
 *  uses the skeleton code from adc_to_pwm.pde for the 16 bit output (see below), 
 *  using the pseudorandom noise generator algorithm at:
 *  https://en.wikipedia.org/wiki/Linear-feedback_shift_register#Galois_LFSRs
 *  
 *  write-up at : https://elfquake.wordpress.com/2018/08/08/arduino-white-noise-generator/
 *  
 *  demo video at: https://youtu.be/RBWBqGr3Lzc
 *  
 *  Circuit:
 *  
 
D9 ---- 1k --------------|

D10 --- 200k --- 56k ----|---> OUT
                         |
                    10n ===
                         |
                         |
                        GND
 *  
 *  
 *  danny.ayers@gmail.com
 *  
// ADC to PWM converter
// guest - openmusiclabs.com - 1.9.13
// options table at http://wiki.openmusiclabs.com/wiki/PWMDAC
// takes in audio data from the ADC and plays it out on
// Timer1 PWM.  16b, Phase Correct, 31.25kHz - although ADC is 10b.

 *  */
 
#define PWM_FREQ 0x00FF // pwm frequency - see table
#define PWM_MODE 0 // Fast (1) or Phase Correct (0)
#define PWM_QTY 2 // number of pwms, either 1 or 2

#define NOISE_LEVEL_PIN 0
#define R_VALUE_PIN 1

uint16_t start_state = 0xACE1u;  /* Any nonzero start state will work. */
uint16_t lfsr = start_state;
unsigned period = 0;

// uint16_t ramp = 0;


uint16_t noise_level;

uint16_t r_value;

float r = 3.7;
float x = 0.5;

float noise;

float x_scale;
float noise_scale;

uint16_t temp3;



void setup() {

 // Serial.begin(9600);
 

  // setup PWM
  TCCR1A = (((PWM_QTY - 1) << 5) | 0x80 | (PWM_MODE << 1)); //
  TCCR1B = ((PWM_MODE << 3) | 0x11); // ck/1
  TIMSK1 = 0x20; // interrupt on capture interrupt
  ICR1H = (PWM_FREQ >> 8);
  ICR1L = (PWM_FREQ & 0xff);
  DDRB |= ((PWM_QTY << 1) | 0x02); // turn on outputs

  sei(); // turn on interrupts - not really necessary with arduino
}

void loop() {
  while (1){ // gets rid of jitter

  };
}

ISR(TIMER1_CAPT_vect) {

  // get ADC data
  unsigned int temp1 = ADCL; // you need to fetch the low byte first
  unsigned int temp2 = ADCH;
  // although ADCH and ADCL are 8b numbers, they are represented
  // here by unsigned ints, just to demonstrate how you would
  // use numbers larger than 8b.  also, be sure you use unsigned
  // ints for this operation.  if you have a signed int (a regular
  // int), add 0x8000 and cast it to an unsigned int before sending
  // it out to OCR1AH or OCR1AL.
  // example:
  // int temp3 = 87;
  // unsigned int temp4 = temp3 + 0x8000;
  // OCR1AH = temp4 >> 8;
  // OCR1AL = temp4;

  unsigned lsb = lfsr & 1;   /* Get LSB (i.e., the output bit). */
  lfsr >>= 1;                /* Shift register */
  lfsr ^= (-lsb) & 0xB400u;

/*
  temp1 = lfsr & 0xFF00u;
  temp2 = lfsr & 0x00FFu;


  // output high byte on OC1A
  OCR1AH = temp2 >> 8; // takes top 8 bits
  OCR1AL = temp2; // takes bottom 8 bits

  // output low byte on OC1B
  OCR1BH = temp1 >> 8;
  OCR1BL = temp1;
  */

  noise_level = analogRead(NOISE_LEVEL_PIN); // will be 0 - 1023
  r_value = analogRead(R_VALUE_PIN);

  r = 3 + ((float)r_value)/1024;

  noise_scale = ((float)noise_level)/2048;

  x_scale = 1 - noise_scale;

  noise = noise_scale * ((float)lfsr)/65536;

  // Serial.println(noise); 
  

  x = x_scale * x + noise;
  
// logistic map 
  x = r * x * (1 - x);


temp3 = (uint16_t)(x * 65536); // scale & cast


    temp1 = temp3 & 0xFF00u;
  temp2 = temp3 & 0x00FFu;


  // output high byte on OC1A
  OCR1AH = temp2 >> 8; // takes top 8 bits
  OCR1AL = temp2; // takes bottom 8 bits

  // output low byte on OC1B
  OCR1BH = temp1 >> 8;
  OCR1BL = temp1;
}


