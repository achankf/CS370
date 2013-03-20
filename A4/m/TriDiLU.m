  function [l,u] = TriDiLU(d,e,f)
%
% Pre:
%   d,e,f   n-vectors that define a tridiagonal matrix 
%           A = diag(e(2:n),-1) + diag(d) + diag(f(1:n-1),1).
%           A has an LU factorization.
% Post: 
%    l      n-vector with the property that 
%           L = eye + diag(l(2:n),-1)
%    u      n-vector with the property that 
%           U = diag(u) + diag(f(1:n-1),1).

   n = length(d); 
   l = zeros(n,1); 
   u = zeros(n,1);
   u(1) = d(1);
   for i=2:n
      l(i) = e(i)/u(i-1);
      u(i) = d(i) - l(i)*f(i-1);
   end
