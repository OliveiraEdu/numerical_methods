close all
clear all
clc

% Dados
 D=[0.00000  -2.56523;
   0.50000  -1.64232;
   1.00000   0.38203;
   1.50000   0.98125;
   2.00000   1.06984;
   2.50000   3.63175;
   3.00000   3.52313;
   3.50000   4.10069;
   4.00000   6.36026;
   4.50000   6.30806;
   5.00000   7.95548];

 %Modelo 
 % y=(3/2)x-2
 
 y=D(:,1)*1.5-2
 

%Plota os dados
plot(D(:,1), D(:,2),".","markersize",20);
hold on

%Plota o modelo
plot(D(:,1), y,"linewidth",2);
grid on

%Erro absoluto
EA=abs(D(:,2)-y)
EA_medio=mean(EA)
EA_max=max(EA)
figure
plot (D(:,1),EA,'linewidth',2)
hold on

%Erro relativo
ER=abs(EA./y)
ER_medio=mean(ER)
ER_max=max(ER)
plot (D(:,1),ER,'linewidth',2)
grid on
legend('Erro absoluto','Erro relativo')


%c) O erro apresenta alguma tendência em relação ao modelo? Qual? 

% Resposta- O erro apresenta uma tendência de incremento em relação ao modelo calculado.
% O que também pode ser observado na análise dos resíduos conforme abaixo:


resid = D(:,2)-y

figure
plot (D(:,1),resid,'linewidth',2)
grid on

legend('Resíduo entre dados e modelo')



