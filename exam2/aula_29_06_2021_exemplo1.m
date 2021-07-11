clear all
close all

f=@(x)5*sin(x)+2*sin(x./2)+10;
x=103:0.001:107;
y=f(x);
plot(x,y,'linewidth',2);
p0=103;
erro_max=0.001;
p=minimiza_lagrange(f,103,erro_max)
hold on;
plot(p,f(p),"r*","markersize",10,"linewidth",3);

