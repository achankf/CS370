function [z] = myImprEuler(t_0, t_final, N, alpha)
	h = (t_final - t_0) / N;
	k(1:3,1) = alpha;

	for i = 1 : N+1
		z(i) = k(1);
		t = i*h;
		
		f = [k(2); k(3); k(2) + t];
		fx1 = k(2) + h * f(2);
		fx = [fx1; k(3) + h * f(3); fx1 + (i)*h];
		k = k + h/2 .* (f + fx);
	end
