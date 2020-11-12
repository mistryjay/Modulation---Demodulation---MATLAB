clc;
close all;

fm = 50;  %modulating signal frequency 
fc = 250; %carrier signal frequency 
B1 = 0.25; %modulation index 1
B2 = 0.5; %modulation index 2
B3 = 0.75; %modulation index 3
B4 = 1; %modulation index 4
B5 = 1.25; %modulation index 5
B6 = 1.5; %modulation index 6

t = 0:0.002:0.5; %defining time period from 0 to 0.5s in 0.002s interval

m = cos(2*pi*fm*t);  %modulating/message signal
c = cos(2*pi*fc*t);  %carrier signal
y1 = cos((2*pi*fc*t) + (B1.*sin(2*pi*fm*t)));  %modulated signal 1
y2 = cos((2*pi*fc*t) + (B2.*sin(2*pi*fm*t)));  %modulated signal 2
y3 = cos((2*pi*fc*t) + (B3.*sin(2*pi*fm*t)));  %modulated signal 3
y4 = cos((2*pi*fc*t) + (B4.*sin(2*pi*fm*t)));  %modulated signal 4
y5 = cos((2*pi*fc*t) + (B5.*sin(2*pi*fm*t)));  %modulated signal 5
y6 = cos((2*pi*fc*t) + (B6.*sin(2*pi*fm*t)));  %modulated signal 6

figure;
subplot(3,3,1);
plot(t,m);      %plotting modulating/information signal
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulating Signal');
legend('e_m(t)');
grid on;

subplot(3,3,2);
plot(t,c);      %plotting carrier signal
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Carrier Signal');
legend('e_c(t)');
grid on;

subplot(3,3,4);
plot(t,y1);      %plotting modulated signal 1
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulated Signal');
legend('e1(t)');
grid on;

subplot(3,3,5);
plot(t,y2);      %plotting modulated signal 2
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulated Signal');
legend('e2(t)');
grid on;

subplot(3,3,6);
plot(t,y3);      %plotting modulated signal 3
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulated Signal');
legend('e3(t)');
grid on;

subplot(3,3,7);
plot(t,y4);      %plotting modulated signal 5
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulated Signal');
legend('e4(t)');
grid on;

subplot(3,3,8);
plot(t,y5);      %plotting modulated signal 5
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulated Signal');
legend('e5(t)');
grid on;

subplot(3,3,9);
plot(t,y6);      %plotting modulated signal 6
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulated Signal');
legend('e6(t)');
grid on;

