%simulacao MIT 
% Curva do MIT - Prof. Renato Kazuo
clear all

%% parâmetros do motor:
p=4; %n polos
f=60; % frequencia

R1=0.325; 
R2=0.75;
X1=0.003*2*pi*f;
X2=0.0025*2*pi*f;
Xm=0.5291*2*pi*f;

ns=120*f/p;
ws=ns*2*pi/60;

V1=220/sqrt(3);

j=1;  

%%
%modelamento pelas equacoes caracteristicas

for s=0:0.001:1
        
        n(j)=(1-s)*ns;
        wm(j)=(1-s)*ws;
        
        Zf(j)=((R2/s+X2*i)*Xm*i)/(R2/s+X2*i+Xm*i);
        Rf(j)=real(Zf(j));
        Xf(j)=imag(Zf(j));
        
        Zentrada(j)=R1+X1*i+Zf(j);
        
        I1(j)=V1/Zentrada(j);
        I1m(j)=abs(I1(j));
        I1a(j)=angle(I1(j));
        
        FP(j)=cos(I1a(j));
        
        Pentrada(j)=3*V1*I1m(j)*FP(j);
        
        Pg(j)=3*I1m(j)^2*Rf(j);
        
        Pmec(j)=(1-s)*Pg(j);
        
        Tmec(j)=Pmec(j)/wm(j);
        
        Rend(j)=Pmec(j)/Pentrada(j);
        
        s1(j)=s;
        
        j=j+1;
    end
    
figure
plot(s1,Tmec);
set(gca,'xdir','reverse');
xlabel('s');
ylabel('Torque Eletromagnético (N.m)');

% figure
% plot(s1,Zentrada);
% set(gca,'xdir','reverse');
% xlabel('s');
% ylabel('Impedância (Ohms)');

 figure
 plot(s1,I1m);
 set(gca,'xdir','reverse');
 xlabel('s');
 ylabel('Corrente de Entrada (A)');

% figure
% plot(s1,FP);
% set(gca,'xdir','reverse');
% xlabel('s');
% ylabel('Fator de Potência');

% figure
% plot(s1,Pentrada);
% set(gca,'xdir','reverse');
% xlabel('s');
% ylabel('Potência de Entrada (W)');

% figure
% plot(s1,Pmec);
% set(gca,'xdir','reverse');
% xlabel('s');
% ylabel('Potência de Saída (W)');

% figure
% plot(s1,Rend);
% set(gca,'xdir','reverse');
% xlabel('s');
% ylabel('Rendimento');

