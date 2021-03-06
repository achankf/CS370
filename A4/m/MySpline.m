function [a b c d] = MySpline(x,y)

	% initialize variables
	n = length(x);
	dx = diff(x);
	y1 = diff(y) ./ dx(1:n-1);

	% allocate memory
	T = zeros(n-1);
	r = zeros(n-1,1);

	% generate the matrix T
	T(1,[1,2,n-1]) = [2 * (dx(n-1) + dx(1)); dx(n-1); dx(1)];
	for i = 2:n-2
		T(i,i-1:i+1) = [dx(i); 2 * (dx(i-1) + dx(i)); dx(i-1)];
	end
	T(n-1,[1,n-2,n-1]) = [dx(n-2); dx(n-1); 2 * (dx(n-2) + dx(n-1))];

	% generate r
	r(1) = 3 * (dx(n-1) * y1(1) + dx(1) * y1(n-1));
	r(2:n-1) = 3 * (dx(2:n-1) .* y1(1:n-2) + dx(1:n-2) .* y1(2:n-1));

	% solve for Ts = r
	[L U p] = lutx(T);
	P = zeros(n-1);
	for i=1:n-1
		P(i,p(i)) = 1;
	end
	yy = bslashtx(L, P*r);
	s = bslashtx(U, yy);
	s(n) = s(1); % boundary condition

	% generate coeficients
	a = y([1:n-1],:);
	b = s([1:n-1],:);
	c = (3 * y1(1:n-1) - 2 * s(1:n-1) - s(2:n)) ./ dx(1:n-1);
	d = (s(2:n) + s(1:n-1) - 2 * y1(1:n-1)) ./ (dx(1:n-1).^2);
