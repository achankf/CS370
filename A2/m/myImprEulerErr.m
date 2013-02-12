clear
t=4;
e = 2.71828182846;
z = (e^t + e^(-t) - t^2) / 2 - 1;
prev = 1;
for i = 1:10
	N = 2^i * 10
	temp = myImprEuler(0,4,N,0);
	zE = temp(N+1);
	err = abs(z - zE)
	err_ratio = err / prev
	prev = err;
end
