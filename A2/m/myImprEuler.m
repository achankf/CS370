function [z] = myImprEuler(t_0, t_final, N, alpha)
	h = (t_final - t_0) / N;
	z(1) = kp = kpp = alpha;
	kx(1) = kpx = kppx = alpha;
	kpppx = kpx * h;

	actual = zeros(1,N+1);
	prev = 1;
	for t = 2:N+1
		% Forward Euler for k', k'', k'''
		kpx_temp = kpx;
		kpx = kp + h * kpp;
		kppx_temp = kppx;
		kppx = kpp + h * (kpx + prev +h);
		kpppx = kpppx+ t* h + kppx_temp;

		% Modified Euler for z (the result)
		z(t) = z(prev) + h / 2 * (kp + kpx);
		kp_temp = kp;
		kp = kp + h / 2 * (kpp + kppx);
		kpp = kpp + h / 2 * (kp_temp + prev * h + kpppx );

		%z(t) = kx(t);
		ss = t*h;
		actual(t) = (e^ss + e^(-ss) - ss^2) / 2 - 1;

		prev = prev + 1;
	end
	x = t_0:h:t_final;
	plot(x,z,x,actual);
endfunction
