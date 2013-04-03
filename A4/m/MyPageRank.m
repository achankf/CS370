function x = MyPageRank(G,a)
	D = diag(1./[2 1 3 2 1 1 2 2 2 2 3 1 1 3 1 2 4 2]);
	P = G*D;
	R = length(G);
	I = eye(R);
	e = ones(R,1);
	x = (I-a * P) \ ((1-a)/R * e);
