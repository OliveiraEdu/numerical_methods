close all
clear all
clc
b=[1;2;3];

A=[-1  4  -1;
   -2 -1 -11;
    2  10  2;]

x=SELA_givens(A,b);
x
erro=A*x-b
~