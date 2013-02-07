function [z] = myEuler(t_0, t_final, N, alpha)
	h = (t_final - t_0) / N;
	NN = N+1;
	k_2 = zeros(0,NN);
	k_3 = zeros(0,NN);

	z(1) = alpha;
	k_2(1) = alpha;
	k_3(1) = alpha;

	prev = 1;
	tt = alpha;
	for t = 2:NN
		z(t) = z(prev) + h * k_2(prev);
		k_2(t) = k_2(prev) + h * k_3(prev);
		k_3(t) = k_3(prev) + h * (k_2(prev) + prev * h);

		tt = tt + h;
		actual(t) = 1/2 * (e^tt +e^(-tt) - tt^2) -1;

		prev = prev + 1;
	end
	x = zeros(0,N+1);
	x(1) = t_0;
	for i = 2:N+1
		x(i) = x(i-1) + h;
	end
	%x = [t_0:1/N:t_final];
	plot(x,z,x,actual);
endfunction
