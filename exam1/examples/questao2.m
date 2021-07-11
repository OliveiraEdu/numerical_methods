% 2) Considerando o sistema dado pelas equações:
% 4x+y-2z=4
% x+3y-z=6
% x/2+y-4z=-1.5
% a representação gráfica.
% b)Resolva usando um método direto.
% c)Resolva usando uma método iterativo.

%--------------

close all
clear all
clc
%4x+y-2z=4
%x+3y-z=6
%x/2+y-4z=-1.5
%---------------------
% Questão 2)a

%primeira equação
%4x+y-2z=4
%-2z=-4x-y+4
%z=2x+y/2-2
[X,Y] = meshgrid(-5:1:5,-5:1:5);
Z=2*X+Y./2-2;
surf(X,Y,Z);
hold on;

%segunda equação
%x+3y-z=6
%z=x+3y-6
[X,Y] = meshgrid(-5:1:5,-5:1:5);
Z=X+3*Y-6;
surf(X,Y,Z);

%terceira equação
%x/2+y-4z=-1.5
%4z=x/2+y+1.5
%z=x/8+y/4+(1.5)/4
[X,Y] = meshgrid(-5:1:5,-5:1:5);
Z=X/8+Y/4+(1.5/4);
surf(X,Y,Z);

%---------------------
% Questão 2)b
A=[4 1 -2;1 3 -1;1/2 1 -4];
b=[4;6;-1.5];
x=SELA_givens(A,b);
fprintf('Direto\n')
x
plot3(x(1),x(2),x(3),"+r","markersize",30,"linewidth",4);


%---------------------
% Questão 2)b
x=gauss_jacobi(A,b,[0;0;0],1000,0.001);
fprintf('Iterativo\n')
x
plot3(x(1),x(2),x(3),"*k","markersize",30,"linewidth",4);




