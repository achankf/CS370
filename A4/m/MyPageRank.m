function x = MyPageRank(G,a)
	R = length(G);
	D = diag(1./sum(G(:,1:R)));
	P = G*D;
	I = eye(R);
	e = ones(R,1);
	x = bslashtx((I-a * P), ((1-a)/R * e));
