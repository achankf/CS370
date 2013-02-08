function [z] = myImprEuler(t_0, t_final, N, alpha)
	h = (t_final - t_0) / N;
	z(1) = k_2 = k_3 = alpha;

	prev = 1;
	for t = 2:N+1
		% Forward Euler for k', k'', k'''
		kpx = k_2 + h * k_3;
		kpppx = k_2 + prev *h;
		kppx = k_3 + h * kpppx;

		% Modified Euler for z (the result)
		z(t) = z(prev) + h / 2 * (k_2 + kpx);
		k_2_temp = k_2; % store k_2 into a temporary
		k_2 = k_2 + h / 2 * (k_3 + kppx);
		k_3 = k_3 + h / 2 * (k_2_temp + prev * h  + kpppx);

		prev = prev + 1;
	end
endfunction
