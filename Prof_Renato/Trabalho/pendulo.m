%Trabalho prof. Renato

% Modelagem do Pendulo no MatLab

function dydt = pendulo(t,y)

b = 0.25;

c = 5.0;

dydt = [y(2); -b*y(2)-c*sin(y(1))];


