function [A,x,b]=gera_sistema(N)
  A=rand(N)*5;
  x=rand(N,1)*5;
  b=A*x;
end
