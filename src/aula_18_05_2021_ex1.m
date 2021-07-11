% 1) O crescimento de uma planta foi medido ao longo do tempo, chegando a seguinte tabela:
% dia, altura(mm)
% 0 | 220
% 10 | 276
% 20 | 310
% foi elaborado um modelo matemático que coloca o crescimento na forma: a=t*5+220. Faça um gráfico do erro 
%absoluto de cada dia e do erro relativo de cada dia. 
%Diga qual dos dois erros é mais útil para analisar a precisão do modelo, justifique




clear all
close all
dados=[0 220;10 276;20 310];
t=[0:1:20];
a=t*5+220;
figure(1);
plot(dados(:,1),dados(:,2),"*r","markersize",15,"linewidth",2);
hold on
plot(t,a,"k","linewidth",2);
hx=xlabel("tempo (s)");
set (hx, "fontsize", 12)
hy=ylabel("altura (mm)");
set (hy, "fontsize", 12)
set(gca, "fontsize", 12);


t=squeeze(dados(:,1));
a=t*5+220;
erro_abs=abs(a-dados(:,2));


figure(2);
plot(t,erro_abs,"*k","markersize",15,"linewidth",2);
hx=xlabel("tempo (s)");
set (hx, "fontsize", 12)
hy=ylabel("erro (mm)");
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


