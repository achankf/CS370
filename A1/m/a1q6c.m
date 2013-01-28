clear

type = 'not-a-knot';
fac = 3;

% load data
a1q6_data

[tx0 ty0] = interpolate(x0,y0,type,fac);
[tx1 ty1] = interpolate(x1,y1,type,fac);
[tx2 ty2] = interpolate(x2,y2,type,fac);
[tx3 ty3] = interpolate(x3,y3,type,fac);
[tx4 ty4] = interpolate(x4,y4,type,fac);
%[tx4 ty4] = interpolate(x4,y4,type,fac);

plot(tx0,-ty0,
	x1,-y1,
	tx2,-ty2,
	tx3,-ty3,
	tx4,-ty4
);
title('Interpolated Data Points of My Initial Letters');
