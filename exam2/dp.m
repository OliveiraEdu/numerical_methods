function dydx=dp(ix,x,func)
  d=zeros(size(x));
  d(ix)=0.001;
  x1=x-d./2;
  x2=x+d./2;
  y1=F(x1,func);
  y2=F(x2,func);
  dydx=(y2-y1)./d(ix);  
end