function [z] = myImprEuler(t_0, t_final, N, alpha)
	h = (t_final - t_0) / N;
	z = zeros(1,N+1);
	z(1) = kp = kpp = alpha;

	actual = zeros(1,N+1);
	prev = 1;
	for t = 2:N+1
		prev_kp = kp;
		prev_kpp = kpp;
		% Modified Euler for z (the result)
		z(t) = z(prev) + h / 2 * (kp + (kp + h * kpp));
		kp = kp + h / 2 * (kpp + (kpp + h * (kp+t*h)));
		kpp = kpp + h / 2 * (kp + h*t + (kp + h*prev));

		%z(t) = kx(t);
		ss = t*h;
		actual(t) = (e^ss + e^(-ss) - ss^2) / 2 - 1;

		prev = prev + 1;
	end
	x = t_0:h:t_final;
	plot(x,z,x,actual);
endfunction
