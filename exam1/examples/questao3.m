% 3) Considerando os seguintes dados abaixo:
%       x                 y
% e o modelo y=2x-2

% a) Calcule o erro absoluto médio e máximo
% b) Calcule o erro relativo médio e máximo


%---------------------



close all
clear all
clc

% Dados
D=[ 0.00000  -2.56523;
   0.50000  -1.64232;
   %1.00000   0.38203;  retirado por causa do erro relativo (divisao por 0)
   1.50000   0.98125;
   2.00000   1.06984;
   2.50000   3.63175;
   3.00000   3.52313;
   3.50000   4.10069;
   4.00000   6.36026;
   4.50000   6.30806;
   5.00000   7.95548];
   

 %Modelo 
 y=2*D(:,1)-2;

%Plota os dados
plot(D(:,1), D(:,2),".","markersize",20);
hold on

%Plota o modelo
plot(D(:,1), y,"linewidth",2);

%Erro absoluto
EA=abs(D(:,2)-y);
EA_medio=mean(EA)
EA_max=max(EA)

%Erro relativo
ER=abs(EA./y);
ER_medio=mean(ER)
ER_max=max(ER)
