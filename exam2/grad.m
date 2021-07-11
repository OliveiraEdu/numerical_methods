function G=grad(f,p)
  d=0.0001/2;
  G=zeros(size(p));
  for i=1:max(size(p))
    v=zeros(size(p));
    v(i)=d;
    y1=f(p-v);
    y2=f(p+v);
    G(i)=(y2-y1)/d;
  end
end