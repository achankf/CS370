clear

type = 'not-a-knot'
fac = 3

% load data
a1q6_data

t0 = findt(x0,y0);

ppx0 = csape(t0,x0);
ppy0 = csape(t0,y0);
tref0 = refinet(t0,fac);
tx0 = ppval(ppx0,tref0);
ty0 = ppval(ppy0,tref0);

t2 = findt(x2,y2);
ppx2 = csape(t2,x2,type);
ppy2 = csape(t2,y2,type);
tref2 = refinet(t2,fac);
tx2 = ppval(ppx2,tref2);
ty2 = ppval(ppy2,tref2);

t3 = findt(x3,y3);
ppx3 = csape(t3,x3,type);
ppy3 = csape(t3,y3,type);
tref3 = refinet(t3,fac);
tx3 = ppval(ppx3,tref3);
ty3 = ppval(ppy3,tref3);

t4 = findt(x4,y4);
ppx4 = csape(t4,x4,type);
ppy4 = csape(t4,y4,type);
tref4 = refinet(t4,fac);
tx4 = ppval(ppx4,tref4);
ty4 = ppval(ppy4,tref4);

[tx4n ty4n] = interpolate(x4,y4,type,fac);

plot(tx0,-ty0,
	x1,-y1,
	tx2,-ty2,
	tx3,-ty3,
	tx4,-ty4
);
title('Interpolated Data Points of My Initial Letters');
