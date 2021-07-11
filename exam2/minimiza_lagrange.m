function p=minimiza_lagrange(f,p0,erro_max)
  erro=erro_max*2;
  while erro>erro_max
    h=calc_h(f,p0,1.0);
    p1=p0+h;
    p2=p0+2*h;
    y0=f(p0);
    y1=f(p1);
    y2=f(p2);
    h=(h*(4*y1-3*y0-y2))/(4*y1-2*y0-2*y2);
    p1=p0+h;
    p2=p0+2*h;
    y0=f(p0);
    y1=f(p1);
    y2=f(p2);
    erro=abs(p1-p0);
    p0=p1;
  end
  p=p0;
end
