clear all; clc;
Pi = 5.2;
p1 = 1/Pi;
duration=7;
r=1/duration;
r0=2.2;
n=1380004385;
beta=r0/(n*duration);
t1=0:1:365
y1=[n-559, 0, 519, 40, 9];
[t,y]=ode45(@(t,y) mak(t,y,beta),t1,y1);
plot(t,y,'LineWidth', 1.5, 'MarkerSize', 10)
legend('Susceptible','Pre-Infectious','Infectious','Recovered','Death', 'Location', 'Best')
xlabel('days after 24 march')
ylabel('Population In India')
title('Prediction of spread of covid-19 in INDIA By SEIRD Model')
grid on;
set(gca, 'FontSize', 10)