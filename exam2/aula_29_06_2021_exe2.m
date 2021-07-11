clc
clear all
close all

[X,Y] = meshgrid(0:0.05:3,0:0.05:3);
Z = 0.02.*sin(X).*sin(Y)-0.03.*sin(2.*X).*sin(Y)+0.04*sin(X).*sin(2*Y)+0.08*sin(2*X).*sin(2*Y);
surf(X,Y,Z);
hold on;

f=@(x)0.02.*sin(x(1)).*sin(x(2))-0.03.*sin(2.*x(1)).*sin(x(2))+0.04*sin(x(1)).*sin(2*x(2))+0.08*sin(2*x(1)).*sin(2*x(2));
plot3(0.8,2.3,f([0.8;2.3]),"b*","linewidth",3,"markersize",10);
plot3(0.9,0.75,f([0.9;0.75]),"b*","linewidth",3,"markersize",10);

p0=[0.5;2.5];
erromax=0.001;
kmax=1000;
p=minimiza_descida_grad(p0,f,erromax,kmax);
plot3(p(1),p(2),f(p),"r*","linewidth",3,"markersize",10);