clear

type = 'not-a-knot';
type2 = 'complete';
fac = 3;

% load data
a1q6_data;

% interpolate initials
[tx0 ty0] = interpolate(x0,y0,type,fac);
[tx1 ty1] = interpolate(x1,y1,type,fac);
[tx2 ty2] = interpolate(x2,y2,type,fac);
[tx3 ty3] = interpolate(x3,y3,type,fac);
[tx4 ty4] = interpolate(x4,y4,type,fac);

% interpolate hand
[tx5 ty5] = interpolate(x5,y5,type2,fac);
[tx6 ty6] = interpolate(x6,y6,type2,fac);
[tx7 ty7] = interpolate(x7,y7,type2,fac);
[tx8 ty8] = interpolate(x8,y8,type2,fac);
[tx9 ty9] = interpolate(x9,y9,type2,fac);

plot(tx0,-ty0, x1,-y1, tx2,-ty2, tx3,-ty3, tx4,-ty4, tx5,-ty5, tx6,-ty6, tx7,-ty7, tx8,-ty8, tx9,-ty9);
title('My Hand and Initial Letters by Interpolation');
axis(axis_dim);
axis off;
