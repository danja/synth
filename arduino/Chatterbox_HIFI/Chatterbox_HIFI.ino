/*  Example of filtering audio noise with a resonant filter,
    using Mozzi sonification library.
  
    Demonstrates StateVariable() with acute resonance,
    which in this case requires the input signal level to be reduced 
    to avoid distortion which can occur with sharp resonance settings.
  
    This sketch using HIFI mode is not for Teensy 3.1.
        
    IMPORTANT: this sketch requires Mozzi/mozzi_config.h to be
    be changed from STANDARD mode to HIFI.
    In Mozz/mozzi_config.h, change
    #define AUDIO_MODE STANDARD
    //#define AUDIO_MODE HIFI
    to
    //#define AUDIO_MODE STANDARD
    #define AUDIO_MODE HIFI
  
    Circuit: Audio output on digital pin 9 and 10 (on a Uno or similar),
    Check the Mozzi core module documentation for others and more detail
  
                     3.9k 
     pin 9  ---WWWW-----|-----output
                    499k           |
     pin 10 ---WWWW---- |
                                       |
                             4.7n  ==
                                       |
                                   ground
  
    Resistors are ±0.5%  Measure and choose the most precise 
    from a batch of whatever you can get.  Use two 1M resistors
    in parallel if you can't find 499k.
    Alternatively using 39 ohm, 4.99k and 470nF components will 
    work directly with headphones.
  
    Mozzi help/discussion/announcements:
    https://groups.google.com/forum/#!forum/mozzi-users
  
    Tim Barrass 2012, CC by-nc-sa.
*/

#include <MozziGuts.h>
#include <Oscil.h>
#include <tables/whitenoise8192_int8.h>
#include <StateVariable.h>
#include "voice512_int8.h" //  for oscillator
#include <AutoMap.h> // maps unpredictable inputs to a range

// use: Oscil <table_size, update_rate> oscilName (wavetable), look in .h file of table #included above
Oscil <VOICE512_NUM_CELLS, AUDIO_RATE> voice(VOICE512_DATA);
Oscil <WHITENOISE8192_NUM_CELLS, AUDIO_RATE> aNoise(WHITENOISE8192_DATA); // audio noise
StateVariable <BANDPASS> svf; // can be LOWPASS, BANDPASS, HIGHPASS or NOTCH

AutoMap formantMap(0,1023,250,800);
// AutoMap resMap(0,1023,255,10);

void setup(){
  startMozzi();
    voice.setFreq(100); // set the tone frequency
  aNoise.setFreq(1.27f*(float)AUDIO_RATE/WHITENOISE8192_SAMPLERATE);   // * by an oddish number (1.27) to avoid exact repeating of noise oscil
  svf.setResonance(5); // 0 to 255, 0 is the "sharp" end
  
  svf.setCentreFreq(300);
}


void updateControl(){
     uint16_t freqVal = mozziAnalogRead(0); // value is 0-1023
   int freq = formantMap(freqVal);
   // svf.setCentreFreq(freq);
 // uint8_t  res = 200 - freqVal >> 3; 
 //  uint8_t res = 256 - freqVal >> 5;
  //   voice.setFreq(freq);
      svf.setResonance(256-(freqVal >> 2));
}


int updateAudio(){
 // int input = aNoise.next()>>1; // shift down (ie. fast /) to avoid distortion with extreme resonant filter setting
 // int output = svf.next(input);
  int input = voice.next()>>1;


  int output = svf.next(input);

  return output<<4; // shift up for HIFI resolution
}


void loop(){
  audioHook();
}






