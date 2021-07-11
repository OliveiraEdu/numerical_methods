% 1) Considerando o seguinte SELA:
% 3x+y=1
% 2x-y=4
% a)Faça a representação gráfica do problema.
% b)Resolva o problema usando um método direto.
% c)Resolva o problema usando um método iterativo, com erro 0.001
%----------

close all
clear all
clc

%---------------------
% Questão 1)a

%primeira equação

% 3x+y=1
% y=-3x+1

x=[-2,2];
y=x*-3+1;
plot(x,y,"linewidth",2);

%segunda equação
% 2x-y=4
% y = 2x-4

x=[-2,2];
y=x*2-4;
hold on
plot(x,y,"linewidth",2);


%---------------------------
% Questão 1)b

%Matriz dos coeficientes
A=[3 1;2 -1];

b=[1;4];
x = SELA_givens(A,b);
fprintf('Direto\n')
x
plot(x(1),x(2),'*k',"linewidth",2,"markersize",20);

%----------------------------
% Questão 1)c
erro=0.001;
x0=[0;0];
kmax=10000;
x=gauss_jacobi( A, b, x0, kmax, erro);
fprintf('Iterativo\n')
x
plot(x(1),x(2),'or',"linewidth",2,"markersize",20);
grid on

legend('Eq. 1','Eq. 2','Direto','Iterativo');

