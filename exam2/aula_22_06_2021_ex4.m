clc
clear all
close all
%(3-2x)x - 2y +1=0
%-2y=-(3-2x)x-1
%y=((3-2x)x+1)/2


%(3-2y)y -x -2z +1=0
%-2z=x-(3-2y)y-1
%z=(x-(3-2y)y-1)/-2

%(3-2z)z -y +1=0
%y=(3-2z)z+1

[X,Z] = meshgrid(-2:0.1:2,-2:0.1:2);
Y = ((3-2.*X).*X +1)/2; 
surf(X,Y,Z);

hold on

[X,Y] = meshgrid(-2:0.1:2,-2:0.1:2);
Z = ((3-2.*Y).*Y -X +1)./2;
surf(X,Y,Z);

[X,Z] = meshgrid(-2:0.1:2,-2:0.1:2);
Y = (3-2.*Z).*Z +1;
surf(X,Y,Z);



func{1}=@(x)(3-2.*x(1)).*x(1) - 2.*x(2) +1;
func{2}=@(x) (3-2.*x(2)).*x(2) -x(1) -2.*x(3) +1;
func{3}=@(x)(3-2.*x(3)).*x(3) -x(2) +1;


x1=newton([0.0;0.0;0.0],0.0001,1000,func);
plot3(x1(1),x1(2),x1(3),".","markersize",100,"linewidth",2);

x2=newton([1.0;0.0;0.0],0.0001,1000,func);
plot3(x2(1),x2(2),x2(3),".","markersize",100,"linewidth",2);







