x = [0.489133 0.228816 0.358974 0.167277 0.399023 0.099878 0.431990 0.425153 0.583883 0.593162 0.875214 0.595360 0.876190 0.590720 0.877411 0.489133]';
y = [0.941636 0.719170 0.716972 0.486447 0.487668 0.260562 0.272283 0.059096 0.054457 0.275702 0.266422 0.492308 0.476190 0.698657 0.705495 0.941636]';

R = length(x);

% create t
t = zeros(R,1);
differ = t(1:R-1) + sqrt(diff(x).^2 + diff(y).^2)
for i = 2:R
	t(i) = t(i-1) + differ(i-1);
end

% create splines
[xa xb xc xd] = MySpline(t,x);
[ya yb yc yd] = MySpline(t,y);

% refine t
fac=10;
tref = zeros(1, fac*(R-1) + 1);
for k = 1:R-1
	i = fac*(k-1)+1;
	dt = t(k+1)-t(k);
	for l = 0:fac-1
		tref(i+l) = t(k) + l*dt/fac;
	end
end
tref(fac*(R-1)+1) = t(R);

% evaluate splines
tx = pwCEval(xa, xb, xc, xd, t, tref);
ty = pwCEval(ya, yb, yc, yd, t, tref);

fig = figure(1);
subplot(1,2,1);
plot(x,y,x,y,'*');
title('The Original Polygon');
axis off;
subplot(1,2,2);
plot(tx,ty);
axis off;
title('A Smooth Curve Using MySpline');

saveas(fig, 'plots.png', 'png');
