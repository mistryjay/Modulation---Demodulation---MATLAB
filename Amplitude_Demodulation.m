clc ;
clear all;  
close all;
fs = 80000; 
fc = 5000;   %carrier frequency = 1kHz
fm = 200;    %modulating frequecy = 100Hz
Ac = 10;     %amplitude of carrier signal 
Am = 10;      %amplitude of modulating signal
m = Am / Ac; %modulation index = 0.5
t = linspace(0,0.02,10000);


ec = Ac * sin(2*pi*fc*t); %definition of carrier signal 
em = Am * sin(2*pi*fm*t); %definition of modulating signal 
y = Ac * (1 + (m*sin(2*pi*fm*t).*sin(2*pi*fc*t))); %definition of modulated signal 

[u l] = envelope(y);  %Envelope Detection - upper and lower detection 

temp = y.*ec;
dm = conv(temp, exp(-t/0.0009)); %response of a low pass filter
figure;
subplot(3,1,1); 
plot(t,em);    %plotting modulating/information signal 
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulating Signal');
legend('e_m(t)');

subplot(3,1,2);
plot(t,y); hold on; %plotting amplitude modulated signal 
plot(t,u,'r');      %upper envelope
plot(t,l,'g--');    %lower envelope 
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Amplitude Modulated Signal');
legend('e(t)');

subplot(3,1,3);
plot(t(1:10000),dm(1:10000)); %plotting demodulated signal 
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Demodulated Signal');
legend('d(t)');

