clc;
clear all;
close all;

fm = 50;  %modulating signal frequency 
fc = 300; %carrier signal frequency 
B = 10;   %modulation index
t = 0:0.0001:0.5; %defining time period from 0 to 0.5s in 0.0001s interval

m = cos(2*pi*fm*t);  %modulating/message signal
c = cos(2*pi*fc*t);  %carrier signal
y = cos((2*pi*fc*t) + (B.*sin(2*pi*fm*t)));  %modulated signal

figure;
subplot(3,1,1);
plot(t,m);      %plotting modulating/information signal
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulating Signal');
legend('e_m(t)');
grid on;

subplot(3,1,2);
plot(t,c);      %plotting carrier signal
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Carrier Signal');
legend('e_c(t)');
grid on;

subplot(3,1,3);
plot(t,y);      %plotting modulated signal
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulated Signal');
legend('e(t)');
grid on;
