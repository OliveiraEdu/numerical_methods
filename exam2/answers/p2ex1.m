close all
clear all
clc
ezplot(@(x,y) (x) + (y).^2 -3)
hold on
ezplot(@(x,y) (x).^2-( y).^2 -6)
axis equal
grid on

func{1}=@(x)x(1) + x(2).^2 -3;
func{2}=@(x)x(1).^2- x(2).^2 -6;

%ok
x1=newton([0.5;0.5],0.0001,1000,func)
plot(x1(1),x1(2),".k","markersize",15,"linewidth",2);

x2=newton([0.5;2],0.0001,1000,func)
plot(x2(1),x2(2),".k","markersize",15,"linewidth",2);

%ok
x3=newton([-3;-2],0.0001,1000,func)
plot(x3(1),x3(2),".k","markersize",15,"linewidth",2);

%ok
x4=newton([-2;1],0.0001,1000,func)
plot(x4(1),x4(2),".k","markersize",15,"linewidth",2);


