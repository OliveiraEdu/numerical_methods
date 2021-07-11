% 2) Considerando o sistema dado pelas equações:
% 3x+2y+z=6
% 5y-z=11
% -x+3y+8z=-3
% a representação gráfica.
% b)Resolva usando um método direto.
% c)Resolva usando uma método iterativo.

%--------------

close all
clear all
clc
%---------------------
% Questão 2)a

%primeira equação
% 3x+2y+z=6
% z=-3x-2y+6

[X,Y] = meshgrid(-5:1:5,-5:1:5);
Z=X*-3-Y*-2+6;
surf(X,Y,Z);
hold on;

%segunda equação
% 5y-z=11
% z=5y-11
[X,Y] = meshgrid(-5:1:5,-5:1:5);
Z=Y*5-11;
surf(X,Y,Z);

%terceira equação
% -x+3y+8z=-3
% z = (x-3y-3)/8
[X,Y] = meshgrid(-5:1:5,-5:1:5);
Z= (X-Y*3-3)/8
surf(X,Y,Z);

%---------------------
% Questão 2)b
% Matriz dos coeficientes
A=[3 2 1;0 5 -1;-1 3 8];

b=[6;11;-3];
x=SELA_givens(A,b);
fprintf('Direto\n')
x
plot3(x(1),x(2),x(3),"or","markersize",50,"linewidth",10);


%---------------------
% Questão 2)b
x=gauss_jacobi(A,b,[0;0;0],1000,0.0001);
fprintf('Iterativo\n')
x
plot3(x(1),x(2),x(3),"*k","markersize",50,"linewidth",10);

legend('Eq. 1','Eq. 2','Eq.3','Direto','Iterativo');

