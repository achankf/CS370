function x = MyPageRank(G,a)
	R = length(G);
	D = diag(1./sum(G(:,1:R)));
	P = G*D;
	I = eye(R);
	e = ones(R,1);
	[L U p] = lutx(I-a * P);
	P = zeros(R);
	for i=1:R
		P(i,p(i)) = 1;
	end
	y = bslashtx(L, P * (1-a)/R * e);
	x = bslashtx(U, y);
