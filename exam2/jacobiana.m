function J=jacobiana(x,func)
  N=max(size(x));
  for ix=1:N
    J(:,ix)=dp(ix,x,func);
  end
end
  