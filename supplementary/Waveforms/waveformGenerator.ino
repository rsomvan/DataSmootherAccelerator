#include "waveforms.h"

//This is the code that ran on the ESP32 in order to generate different signals 
//using the 8 bit on board DAC. All of the waveforms in waveform.h were generated in 
//matlab

#define DAC_CH 25
#define BUTTON 14

int count = 0;
int i = 0;



void setup()
{
  pinMode(BUTTON, INPUT_PULLUP);
}

void loop()
{
  if (digitalRead(BUTTON) == LOW) {  // check if the button is pressed
    delay(50);  // debounce the button
    if (digitalRead(BUTTON) == LOW) {  // check again to ensure it is a valid press
      count++;  // increment the count
      delay(300);
      if (count > 5) {  // wrap around the count if it exceeds the maximum value
        count = 0;
      }
    }
  }

  switch (count) {
    case 0:
      dacWrite(DAC_CH, noisy_sine[i]);
      break;
    case 1:  
      dacWrite(DAC_CH, noisy_saw[i]);
      break;
    case 2:  
      dacWrite(DAC_CH, noisy_mod[i]);
      break;
    case 3:  
       dacWrite(DAC_CH, burst_noise_sine[i]);
      break;
    case 4:  
     dacWrite(DAC_CH, mod_ramp[i]);
    break;
    case 5:  
     dacWrite(DAC_CH,  mod_sine_100[i]);
    break;
    default:
      dacWrite(DAC_CH, 0);
      break;
  }

  //check total waveform length
  if(i == SIGNAL_LENGTH){
    i = 0;
  }
  else{
    i++;
  }

  
  //here we can set the "frequency" of the signal sent on the DAC
  //currently the generated wavforms are 1Hz with 1Khz per discrete ouput value
  delay(1);  // insert delay after each sample output
}
