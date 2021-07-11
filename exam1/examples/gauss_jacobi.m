function [x,k]=gauss_jacobi( A, b, x0, kmax, e)
  C=zeros(size(A,1));
  for i=1:size(A,1)
    for j=1:size(A,2)
      if i==j
        C(i,j)=0;
      else
        C(i,j)=-A(i,j)/A(i,i);  
      end
    end  
  end

  g=zeros(size(b,1),1);
  for i=1:size(b,1)
    g(i)=b(i)/A(i,i);
  end

  erro=1000.0;
  k=1;
  xanterior=x0;
  while (erro>e) && (k<=kmax)
      x=C*xanterior+g;
      erro=max(abs(x-xanterior));
      k=k+1;
      xanterior=x;
  end  
end
