function [z] = myImprEuler(t_0, t_final, N, alpha)
	h = (t_final - t_0) / N;
	z(1) = kp = kpp = alpha;

	prev = 1;
	for t = 2:N+1
		% Forward Euler for k', k'', k'''
		kpx = kp + h * kpp;
		kppx = kpp + h * (kp + prev * h);

		% Modified Euler for z (the result)
		z(t) = z(prev) + h / 2 * (kp + kpx);
		kp_temp = kp;
		kp = kp + h / 2 * (kpp + kppx);
		kpp = kpp + h / 2 * (kp_temp + prev * h + kp + t * h );

		prev = prev + 1;
	end
endfunction
