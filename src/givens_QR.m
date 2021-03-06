% Transforma a matriz A de coeficientes do sistema em um produto de duas matrizes
% A matriz Q ortogonal  e a matriz R triangula superiorto
% O sistema original  Ax=b é tranformado em Rx=Q'b que é  um sistema de triangular superior

function [Q,R]= givens_QR(A)
  n=size(A,1);
  Q=eye(n);
  R=A;
  for j=1:n
    for i=n:-1:j+1
      x=R(:,j);
      if norm([x(i-1),x(i)])>0
        c=x(i-1)/norm([x(i-1),x(i
        s=-x(i)/norm([x(i-1),x(i)]);
        G=eye(n);
        G([i-1,i],[i-1,i])=[c,s;-s,c];
        R=G'*R;
        Q=Q*G;
      end
    end
  end
end