  function x = LBidiSol(l,b)
%
% Pre:
%    l  n-vector that defines the lower bidiagonal matrix
%       L = I + diag(l(2:n),-1).
%    b  n-by-m matrix
%
% Post:
%    x  n-by-m matrix that solves Lx = b

   n = size(b,1); 
   x = zeros(n,size(b,2));
   x(1,:) = b(1,:);
   for i=2:n
      x(i,:) = b(i,:) - l(i)*x(i-1,:);
   end
