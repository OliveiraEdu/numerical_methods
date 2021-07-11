close all
clear all
clc
A=[10 2 1;1 5 1;2 3 10];
b=[7;-8;6];
x0=[0.7;-1.6;0.6];
e=0.001;
x=gauss_seidel(A, b, x0, 1000, e);
erro=norm(A*x-b)
 