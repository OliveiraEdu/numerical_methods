% 1) Considerando o seguinte SELA:
% 2x-y=2
% 3x+2y=1
% a)Faça a representação gráfica do problema.
% b)Resolva o problema usando um método direto.
% c)Resolva o problema usando um método iterativo, com erro 0.001
%----------

close all
clear all
clc
%2x-y=2
%3x+2y=1

%---------------------
% Questão 1)a

%primeira equação
%2x-y=2
%2x-2=y
%y=2x-2
x=[-2,2];
y=x*2-2;
plot(x,y,"linewidth",2);

%segunda equação
%2y+3x=1
%2y=-3x+1
%y=-(3/2)x+1/2
x=[-2,2];
y=-(3/2)*x+1/2;
hold on
plot(x,y,"linewidth",2);

%---------------------------
% Questão 1)b
A=[2 -1;3 2];
b=[2;1];
x = SELA_givens(A,b);

plot(x(1),x(2),'ok',"linewidth",2,"markersize",20);

%----------------------------
% Questão 1)c
erro=0.001;
x0=[0;0];
kmax=10000;
x=gauss_jacobi( A, b, x0, kmax, erro);
x
plot(x(1),x(2),'or',"linewidth",2,"markersize",20);




