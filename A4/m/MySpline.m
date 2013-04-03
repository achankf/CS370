function [a b c d] = MySpline(x0,y0)
	A = sortrows([x0' y0]);
	x = A(:,1);
	y = A(:,2);
	

	n = length(x);
	deltax = zeros(n:1);
	a = zeros(n-1,1);
	b = zeros(n-1,1);
	c = zeros(n-1,1);
	d = zeros(n-1,1);
	y1 = zeros(n-1,1);

	T = zeros(n,n);
	r = zeros(n,1);

	for i = 1:n-1
		deltax(i) = x(i+1) - x(i);
	end

	for i = 1:n-1
		y1(i) = (y(i+1) - y(i)) / deltax(i);
	end

%	T(1,1) = 1;
%	T(1,n) = -1;
%	T(n,1) = 2 * deltax(n-1);
%	T(n,2) = deltax(n-1);
%	T(n,n-1) = 2 * deltax(1);
%	T(n,n) = deltax(1);

	T(1,1)=1;
	T(1,2) = 1/2;
	T(n,n) = 1;
	T(n,n-1) = 1/2;
	for i = 2:n-1
		T(i,i-1) = deltax(i);
		T(i,i) = 2 * (deltax(i-1) + deltax(i));
		T(i,i+1) = deltax(i-1);
	end

	%r(1) = 0;
	for i = 2:n-1
		y1_i_1 = (y(i) - y(i-1)) / deltax(i);
		y1_i = (y(i+1) - y(i)) / deltax(i);
		r(i) = 3 * (deltax(i) * y1(i-1)  + deltax(i-1) * y1(i));
	end
	r(1) = 3/2 * y1(1);
	r(n) = 3/2 * y1(n-1);

	s = bslashtx(T,r);

	a = y([1:n-1],:)
	b = s([1:n-1],:);

	for i = 1:n-1
		c(i) = (3 * y1(i) - 2 * s(i) - s(i+1)) / deltax(i);
		d(i) = (s(i+1) + s(i) - 2 * y1(i)) / deltax(i)^2;
	end
