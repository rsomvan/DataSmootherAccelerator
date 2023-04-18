#include <SPI.h>
#include "waveforms.h"

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
      if (count > 7) {  // wrap around the count if it exceeds the maximum value
        count = 0;
      }
    }
  }

  switch (count) {
    case 0:
      dacWrite(DAC_CH, noisy_mod[i]);
      Serial.println("clean_sine");
      break;
    case 1:  
      dacWrite(DAC_CH, noisy_sine[i]);
       Serial.println("noisy_sine");
      break;
    case 2:  
      dacWrite(DAC_CH, clean_saw[i]);
       Serial.println("clean_saw");
      break;
    case 3:  
       dacWrite(DAC_CH, noisy_saw[i]);
       Serial.println("noisy_saw");
      break;
    case 4:  
      dacWrite(DAC_CH, mod_sine[i]);
      Serial.println("mod_sine");
      break;
    case 5:  
      dacWrite(DAC_CH, burst_noise_sine[i]);
      Serial.println("burst_noise_sine");
      break;
    case 6:
      dacWrite(DAC_CH, 0);
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
  delay(1);  // insert delay after each sample output
}
