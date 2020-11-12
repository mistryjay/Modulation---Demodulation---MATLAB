clc ;
clear all;  
close all;

fc = 5000;   %carrier frequency = 1kHz
fm = 200;    %modulating frequecy = 100Hz
Ac = 10;     %amplitude of carrier signal 
Am = 5;      %amplitude of modulating signal
m = Am / Ac; %modulation index = 0.5
t = linspace(0,0.02,10000);

%noise = randn(size(t));  %generating noise

ec = Ac * sin(2*pi*fc*t); %definition of carrier signal 
em = Am * sin(2*pi*fm*t); %definition of modulating signal 
y = Ac * (1 + (m*sin(2*pi*fm*t).*sin(2*pi*fc*t))); %definition of modulated signal 
%y = Ac * (1 + (m*sin(2*pi*fm*t).*sin(2*pi*fc*t)) + noise); %definition of modulated signal with noise. 

figure;
subplot(3,1,1); 
plot(t,em);    %plotting modulating/information signal 
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulating Signal');
legend('e_m(t)');

subplot(3,1,2);
plot(t,ec);   %plotting carrier signal 
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Carrier Signal');
legend('e_c(t)');

subplot(3,1,3);
plot(t,y);    %plotting amplitude modulated signal 
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Amplitude Modulated Signal');
legend('e(t)');

