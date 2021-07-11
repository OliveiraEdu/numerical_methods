% 2) O deslocamento de um carro foi medido desde o início do seu movimento, ao longo do tempo
%, resultando na tabela abaixo:
% t,d(m)
% 0.0 | 0.0
% 0.1 | 0.02
% 10 | 1.02
% 20 | 1.99
% Foi elaborado um modelo do movimento do carro na forma d=t*0,1. 
% Faça um gráfico do erro absoluto de cada tempo e do erro relativo de cada tempo. 
% Diga qual dos dois erros é mais útil para analisar a precisão do modelo, justifique.



clear all
close all
dados=[0.0 0.0;0.1 0.02;10  1.02;20  1.99];

t=[0:1:20];
a=t*0.1;
figure(1);
plot(dados(:,1),dados(:,2),"*r","markersize",15,"linewidth",2);
hold on
plot(t,a,"k","linewidth",2);
hx=xlabel("tempo (s)");
set (hx, "fontsize", 12)
hy=ylabel("deslocamento (m)");
set (hy, "fontsize", 12)
set(gca, "fontsize", 12);

t=squeeze(dados(:,1));
a=t*0.1;
erro_abs=abs(a-dados(:,2));


figure(2);
plot(t,erro_abs,"*k","markersize",15,"linewidth",2);
hx=xlabel("tempo (s)");
set (hx, "fontsize", 12)
hy=ylabel("erro (m)");
set (hy, "fontsize", 12)
set(gca, "fontsize", 12);

erro_rel=abs(a-dados(:,2))./a;

figure(3);
plot(t,erro_rel*100,"*k","markersize",15,"linewidth",2);
hx=xlabel("tempo (s)");
set (hx, "fontsize", 12)
hy=ylabel("erro rel. (%)");
set (hy, "fontsize", 12)
set(gca, "fontsize", 12);


