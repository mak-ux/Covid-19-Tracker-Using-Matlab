clear all; clc;
Pi = 5.2;
p1 = 1/Pi;
duration=7;
r=1/duration;
r0=2.2;
n=1380004385;
beta=r0/(n*duration);
t1=0:1:120
y1=[n-559, 0, 519, 40, 9];
[t,y]=ode45(@(t,y) mak(t,y,beta),t1,y1);
y2=[y(end,1), y(end,2), y(end,3), y(end,4), y(end,5)];
t2=121:1:365;
[t,y3]=ode45(@(t,y) mak(t,y,beta/2),t2,y2);
ycom=[y;y3];

plot(0:1:365,ycom,'LineWidth', 1.5, 'MarkerSize', 18)
legend('S','E','I','R','D', 'Location', 'Best')
xlabel('days after 24 march')
ylabel('Population In India')
title('Prediction of spread of covid-19 in INDIA After Applying Rule And policies By SEIRD Model')
grid on;
set(gca, 'FontSize', 10)