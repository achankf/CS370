t=4
z = (e^t + e^(-t) - t^2) / 2 - 1
prev = 0;
for i = 1:10
	N = 2^i * 10;
	zE = myImprEuler(0,4,N,0)(N+1)
	err = abs(z - zE);
	err_ratio = err / prev
	prev = err;
end
