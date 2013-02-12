function [z] = myImprEuler(t_0, t_final, N, alpha)
	h = (t_final - t_0) / N;
	z = zeros(1,N+1);
	z(1) = alpha;
	kp = alpha;
	kpp = alpha;

	actual = zeros(1,N+1);
	prev = 1;
	for t = 2:N+1
		% Modified Euler for z (the result)
		kppp = kp + prev*h;
		f1 = kp;
		f1x = kp + h * kpp;
		f2 = kpp;
		f2x = kpp + h*kppp;
		f3 = kp + prev*h;
		f3x = f1x + t*h;

		z(t) = z(prev) + h/2 *(f1+f1x);
		kp = kp + h/2 *(f2+f2x);
		kpp = kpp + h/2 *(f3+f3x);

		%z(t) = kx(t);
		%ss = t*h;
		%actual(t) = (e^ss + e^(-ss) - ss^2) / 2 - 1;

		prev = prev + 1;
	end
	%x = t_0:h:t_final;
	%plot(x,z,x,actual);
