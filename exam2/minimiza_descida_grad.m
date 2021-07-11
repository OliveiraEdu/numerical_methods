function pmin=minimiza_descida_grad(p0,f3d,erromax,kmax)
  erro=erromax*2;
  k=0;
  p=p0;
  while((erro>erromax) && (k<kmax)) 
    %plot3(p(1),p(2),f3d(p),"y*","linewidth",3,"markersize",10);
    k=k+1;
    G=grad(f3d,p);
    S=-G/norm(G);
    f2d=@(t)f3d(p+t.*S);
    hm=minimiza_lagrange(f2d,0,0.001);
    p1=p+hm*S;
    erro=norm(p1-p);
    p=p1;
  end
  pmin=p;

end
