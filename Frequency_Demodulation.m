clc;
clear all;
close all;

fs = 1000; %sampling frequency
fc = 400;  %carrier signal frequency
fm = 30;   %modulating signal frequency
t = (0:1/fs:0.5); %time period
fd = 100;  %frequency deviation

m = sin(2*pi*fm*t); %definition of modulating singal 
 
y = fmmod(m,fc,fs,fd); %Frequency Modulation

d = fmdemod(y, fc, fs, fd); %Demodulating the modulated signal

plot(t, m, 'r', t, d, 'b--');
xlabel('Time(s)');
ylabel('Amplitude');
legend('Sinusoidal audio signal','Demodulated Signal' );