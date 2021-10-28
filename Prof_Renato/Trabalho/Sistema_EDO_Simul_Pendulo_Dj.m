close all; clear all, clc

[t,y] = ode45(@pendulo,[0 10],[pi-0.1; 0])

plot(t,y(:,1),'-',t,y(:,2),'-')

title('Pendulo');
xlabel('Tempo');
ylabel('Solução y')
grid on
legend('teta','omega')