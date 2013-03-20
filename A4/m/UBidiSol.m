  function x = UBidiSol(u,f,b)
%
% Pre:
%  u,f  n-vectord that define the upper bidiagonal matrix
%       U = diag(u) + diag(f(1:n-1),1)
%    b  n-by-m matrix
%
% Post:
%    x  n-by-m matrix that solves Ux = b


   n = size(b,1); 
   x = zeros(n,size(b,2));
   x(n,:) = b(n,:)/u(n);
   for i=n-1:-1:1
      x(i,:) = (b(i,:) - f(i)*x(i+1,:))/u(i);
   end
