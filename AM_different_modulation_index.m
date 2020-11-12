clc ;
clear all;  
close all;

fc = 5000;   %carrier frequency = 1kHz
fm = 200;    %modulating frequecy = 100Hz
Ac = 10;     %amplitude of carrier signal 
Am = 5;      %amplitude of modulating signal
m1 = 0.25;
m2 = 0.5;
m3 = 0.75;
m4 = 1;
m5 = 1.25;
m6 = 1.5;
t = linspace(0,0.02,10000);

ec = Ac * sin(2*pi*fc*t); %definition of carrier signal 
em = Am * sin(2*pi*fm*t); %definition of modulating signal 
y1 = Ac * (1 + (m1*sin(2*pi*fm*t).*sin(2*pi*fc*t))); %m1 index modulated signal
y2 = Ac * (1 + (m2*sin(2*pi*fm*t).*sin(2*pi*fc*t))); %m2 index modulated signal
y3 = Ac * (1 + (m3*sin(2*pi*fm*t).*sin(2*pi*fc*t))); %m3 index modulated signal
y4 = Ac * (1 + (m4*sin(2*pi*fm*t).*sin(2*pi*fc*t))); %m4 index modulated signal
y5 = Ac * (1 + (m5*sin(2*pi*fm*t).*sin(2*pi*fc*t))); %m5 index modulated signal
y6 = Ac * (1 + (m6*sin(2*pi*fm*t).*sin(2*pi*fc*t))); %m6 index modulated signal

figure;
subplot(3,3,1); 
plot(t,em);    %plotting modulating/information signal 
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulating Signal');
legend('e_m(t)');

subplot(3,3,2);
plot(t,ec);   %plotting carrier signal 
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Carrier Signal');
legend('e_c(t)');

subplot(3,3,4); 
plot(t,y1);    %plotting modulated signal 1 
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulated Signal');
legend('\mu = 0.25');

subplot(3,3,5); 
plot(t,y2);    %plotting modulated signal 2 
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulated Signal');
legend('\mu = 0.5');

subplot(3,3,6); 
plot(t,y3);    %plotting modulated signal 3 
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulated Signal');
legend('\mu = 0.75');

subplot(3,3,7); 
plot(t,y4);    %plotting modulated signal 4 
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulated Signal');
legend('\mu = 1');

subplot(3,3,8); 
plot(t,y5);    %plotting modulated signal 5
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulated Signal');
legend('\mu = 1.25');

subplot(3,3,9); 
plot(t,y6);    %plotting modulated signal 6
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulated Signal');
legend('\mu = 1.5');

