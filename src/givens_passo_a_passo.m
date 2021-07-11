clear all
clc
b=[1;2;3];

A=[-1  4  -1;
   -2 -1 -11;
    2  10  2;]
    
%Para fazermos A(3,1)=0 usamos a matriz G1(2,3) lembrando que: G(i-1,i) i=3
i=3;
x=A(:,1);
c=x(i-1)/(x(i-1)^2+x(i)^2)^(1/2);
s=-x(i)/(x(i-1)^2+x(i)^2)^(1/2);
G1=[1  0  0;
    0  c  s;
    0 -s  c]

A1=G1'*A

%Para fazermos A(2,1)=0 usamos a matriz G2(1,2) lembrando que: G(i-1,i) i=2
i=2; 
x=A1(:,1);
c=x(i-1)/(x(i-1)^2+x(i)^2)^(1/2);
s=-x(i)/(x(i-1)^2+x(i)^2)^(1/2);
G2=[c  s  0;
   -s  c  0;
    0  0  1]
    
A2=G2'*A1

%para fazermos A(3,2) usamos a matriz G3(2,3) lembrando que: G(i-1,i) i=3 
i=3;
x=A2(:,2);
c=x(i-1)/(x(i-1)^2+x(i)^2)^(1/2);
s=-x(i)/(x(i-1)^2+x(i)^2)^(1/2);
G3=[1  0  0;
    0  c  s;
    0 -s  c]
    
A3=G3'*A2
R=A3

Q=G1*G2*G3

%A solução do sistema Ax=b é Rx=Q'b

x=SELA_trisup(R,Q'*b);
x
erro=R*x-(Q'*b)
erro=A*x-b



   