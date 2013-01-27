clear

x = [28.689 137.407 228.617 312.497 419.180];
y = [747.443 469.321 250.425 44.352 697.070];

t = findt(x,y);

ppx = csape(t,x);
ppy = csape(t,y);
tref = refinet(t);
tx = ppval(ppx,tref);
ty = ppval(ppy,tref);

x1 = [175.28 363.80];
y1 = [384.45 374.37];

plot(-tx,-ty,'*',-x1,-y1,'*');
title('Interpolated Data Points of My Initial Letters');
