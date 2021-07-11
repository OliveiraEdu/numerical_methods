clear all
close all

f=@(x)x.^2-3.*x+10.*sin(x);
x=-2:0.01:6;
y=f(x);
plot(x,y,'linewidth',2);
p0=0;
erro_max=0.001;
p=minimiza_lagrange(f,p0,erro_max)
hold on;
plot(p,f(p),"r*","markersize",10,"linewidth",3);

