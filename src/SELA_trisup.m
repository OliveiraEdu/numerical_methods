function x=SELA_trisup(A,b)

  M=size(A,1);
  N=size(A,2);
  x=zeros(M,1);
  for i=M:-1:1
    x(i,1)=(b(i)-A(i,:)*x)/A(i,i);
  end

end

