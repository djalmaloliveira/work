figure(1)
plot(t,x1,'--r')
hold on
plot(t,x2,'b')
grid on
legend('x1','x2')
title('Gráfico X1 e X2')
xlabel('tempo (s)')
ylabel('deslocamento(m)')

figure(2)
subplot(2,1,1)
plot(t,x1,'--r')
hold on
subplot(2,1,2)
plot(t,x2,'--r')