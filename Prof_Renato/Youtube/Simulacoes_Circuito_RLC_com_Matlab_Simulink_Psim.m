%Exercicio YouTube
%https://www.youtube.com/watch?v=iE1HIVbOkhw
clear

num = [1 0]; %numerador
den = [2 5 3]; %denominador
t = 0:0.001:10; %tempo de simulacao ate 10 s

[y,x t] = step(num,den,t); %Resposta ao degrau

plot(t,y) %Plotar a função acima
grid

xlabel('t sec')
ylabel('output')