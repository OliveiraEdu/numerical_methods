function x=newton(x0,erro,kmax,func)
  x=x0;
  f=F(x,func);
  er=norm(f);
  k=0;
  while (er>=erro) && (k<kmax)
    k=k+1;   
    J=jacobiana(x,func);
    s=SELA_givens(J,-f);
    x=x+s;
    f=F(x,func);
    er=norm(f);
  end
  
end