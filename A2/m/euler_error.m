function [err err_ratio] = euler_error(euler_fn, t, n_max)
e = 2.71828182846;
z = (e^t + e^(-t) - t^2) / 2 - 1;

for i = 1 : n_max
	N = 2^i * 10;
	temp = euler_fn(N);
	zE(i) = temp(N+1);
	err(i) = abs(z-zE(i));
end

for i = 2 : n_max
	err_ratio(i) = err(i) / err(i-1);
end
