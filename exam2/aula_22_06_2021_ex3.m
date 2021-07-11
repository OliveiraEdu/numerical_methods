close all
clear all
clc
ezplot(@(x,y) (x).^2 + (y).^2 -2)
hold on
ezplot(@(x,y)exp(x-1)+ y.^3 -2)
axis equal


func{1}=@(x)x(1).^2 + x(2).^2 -2
func{2}=@(x)exp(x(1)-1)+ x(2).^3 -2

x1=newton([0.5;0.5],0.0001,1000,func)
plot(x1(1),x1(2),"o","markersize",15,"linewidth",2);
x2=newton([-0.5;0.5],0.0001,1000,func)
plot(x2(1),x2(2),"o","markersize",15,"linewidth",2);
