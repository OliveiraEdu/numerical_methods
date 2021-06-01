close all
clear all
clc
[A,s,b]=gera_sistema(5);
tic
x = SELA_gives(A,b);
x
erro=norm(A*x-b)
toc
