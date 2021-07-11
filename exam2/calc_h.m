function h=calc_h(f,p0,h0)
  h=h0;
  h=abs(h)*(-sign(df(f,p0)));  
  while 1
    p1=p0+h;
    p2=p0+2*h;
    y0=f(p0);
    y1=f(p1);
    y2=f(p2);
    if (y0>y1) && (y1<y2)
      break
    end
    if y1>y0
      h=h/2;
    end
    if y1>y2
      h=h*2;
    end  
  end
end
  