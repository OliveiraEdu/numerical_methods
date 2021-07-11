%exemplo1
close all
clear all
clc
ezplot(@(x,y) (x).^2 + (y).^2 -2)
hold on
ezplot(@(x,y) (x).^2 - ((y).^2)/9 -1)
axis equal
xlim([-2 2])
ylim([-2 2])

func{1}=@(x)x(1).^2 + x(2).^2 -2;
func{2}=@(x)x(1).^2 - (x(2).^2)/9 -1;

x1=newton([0.5;0.5],0.0001,1000,func);
plot(x1(1),x1(2),"o","markersize",15,"linewidth",2);
x2=newton([-0.5;0.5],0.0001,1000,func);
plot(x2(1),x2(2),"o","markersize",15,"linewidth",2);
x3=newton([0.5;-0.5],0.0001,1000,func);
plot(x3(1),x3(2),"o","markersize",15,"linewidth",2);
x4=newton([-0.5;-0.5],0.0001,1000,func);
plot(x4(1),x4(2),"o","markersize",15,"linewidth",2);