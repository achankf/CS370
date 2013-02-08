function [z] = myEuler(t_0, t_final, N, alpha)
	h = (t_final - t_0) / N;
	z(1) = k_2 = k_3 = alpha;

	prev = 1;
	for t = 2:N+1
		z(t) = z(prev) + h * k_2;
		k_2_temp = k_2;
		k_2 = k_2 + h * k_3;
		k_3 = k_3 + h * (k_2_temp + prev * h);

		prev = prev + 1;
	end
endfunction
