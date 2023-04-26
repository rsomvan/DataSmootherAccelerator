clc;
clear;
clf;

t = 0:1:4000;               
fs = 1000;           
freq = 1; 

%save waveforms to C form
fid = fopen('waveforms.h', 'w');

%Clean SineWave       
clean_sine = 0.4*sin(2*pi*t*freq/fs) + 0.45;
clean_sine = round(clean_sine*2^8);
fprintf(fid, 'int clean_sine[] = {');
fprintf(fid, '%d, ', clean_sine(1:end-1));
fprintf(fid, '%d', clean_sine(end));
fprintf(fid, '};\n');
subplot(6,1,1);
plot(clean_sine);

%Noisy SineWave
noisy_sine = clean_sine + 18 * rand(1, length(t));
noisy_sine = round(noisy_sine); %normalize
fprintf(fid, 'int noisy_sine[] = {');
fprintf(fid, '%d, ', noisy_sine(1:end-1));
fprintf(fid, '%d', noisy_sine(end));
fprintf(fid, '};\n');
subplot(6,1,2);
plot(noisy_sine);

%Clean Saw tooth
clean_saw = 0.4*sawtooth(2*pi*t*freq/fs) + 0.45;
clean_saw = round(clean_saw*2^8);
fprintf(fid, 'int clean_saw[] = {');
fprintf(fid, '%d, ', clean_saw(1:end-1));
fprintf(fid, '%d', clean_saw(end));
fprintf(fid, '};\n');
subplot(6,1,3);
plot(clean_saw);

%Noisy Saw Tooth
subplot(6,1,4);
noisy_saw = clean_saw + 25 * rand(1, length(t));
noisy_saw = round(noisy_saw); %normalize
fprintf(fid, 'int noisy_saw[] = {');
fprintf(fid, '%d, ', noisy_saw(1:end-1));
fprintf(fid, '%d', noisy_saw(end));
fprintf(fid, '};\n');
plot(noisy_saw);

%Clean Modulated SineWave
subplot(6,1,5);
mod_sine = 0.2*sin(2*pi*t*freq/fs) + 0.1*sin(2*pi*t*freq*10/fs) + 0.45;
mod_sine = round(mod_sine*2^8); %normalize
fprintf(fid, 'int mod_sine[] = {');
fprintf(fid, '%d, ', mod_sine(1:end-1));
fprintf(fid, '%d', mod_sine(end));
fprintf(fid, '};\n');
plot(mod_sine)

%Noisy Modulated SineWave
subplot(6,1,6);
noisy_mod = mod_sine + 15 * rand(1, length(t));
noisy_mod = round(noisy_mod); %normalize
fprintf(fid, 'int noisy_mod[] = {');
fprintf(fid, '%d, ', noisy_mod(1:end-1));
fprintf(fid, '%d', noisy_mod(end));
fprintf(fid, '};\n');
plot(noisy_mod)

%adding burst noise to clean data
figure(2)
noise = rand(1,200);
noise = 100*(noise - 1/2);
for i=1:20
    clean_sine(950+i) = round(clean_sine(950+i) + noise(i));
    clean_sine(2950+i) = round(clean_sine(2950+i) + noise(i));

end
burst_noise_sine = round(clean_sine);
title("Burst Noise Sinewave @ 1Hz")
plot(burst_noise_sine);
fprintf(fid, 'int burst_noise_sine[] = {');
fprintf(fid, '%d, ', burst_noise_sine(1:end-1));
fprintf(fid, '%d', burst_noise_sine(end));
fprintf(fid, '};\n');

%sinwave with superimposed 50Hz sine
figure(3)
mod_ramp = 0.2*sin(2*pi*t*freq/fs) + 0.1*sin(2*pi*t*freq*100/fs) + 0.45;
mod_ramp = round(mod_ramp*2^8); %normalize
fprintf(fid, 'const int mod_sine_100[] = {');
fprintf(fid, '%d, ', mod_ramp(1:end-1));
fprintf(fid, '%d', mod_ramp(end));
fprintf(fid, '};\n');
plot(mod_ramp)

%close file
fclose(fid);







