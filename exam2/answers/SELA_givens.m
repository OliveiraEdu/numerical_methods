%Para resolução de sistemas não triangulares superiores por método direto


function x= SELA_givens(A,b)
  [Q,R]=givens_QR(A);
  x=SELA_trisup(R,Q'*b);
end
  
