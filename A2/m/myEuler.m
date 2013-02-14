function [z] = myEuler(t_0, t_final, N, alpha)
	h = (t_final - t_0) / N;
	k(1:3,1) = alpha;
	for i = 1 : N+1
		z(i) = k(1);
		f = [k(2); k(3); k(2) + i*h];
		k = k + h .* f;
	end
