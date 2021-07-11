clear all
clc
M=[1 2 3;0 2 1;0 0 3];
k=[3;2;1];
x=SELA_trisup(M,k);
x
disp("erro")
M*x-k
