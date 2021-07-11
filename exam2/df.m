function dfdx=df(f,x)
  delta=0.0001;
  d=delta/2;
  dfdx=(f(x+d)-f(x-d))/delta;
end