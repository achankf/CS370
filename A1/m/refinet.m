function [tref] = refinet(t,fac)
	N = length(t);
	tref = zeros(1, fac*(N-1) + 1);
	for k = 1:N-1
		i = fac*(k-1)+1;
		dt = t(k+1)-t(k);
		for l = 0:fac-1
			tref(i+l) = t(k) + l*dt/fac;
		end
	end
	tref(fac*(N-1)+1) = t(N);
endfunction
