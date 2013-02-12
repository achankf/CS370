function [z] = myEuler(t_0, t_final, N, alpha)
	h = (t_final - t_0) / N;
	z(1) = k_2 = k_3 = alpha;

	prev = 1;
	for t = 2:N+1
		k_4 = k_2 + prev * h;
		z(t) = z(prev) + h * k_2;
		k_2 = k_2 + h * k_3;
		k_3 = k_3 + h * k_4;

		prev = prev + 1;
	end
endfunction
