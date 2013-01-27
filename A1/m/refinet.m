function [tref] = refinet(t)
N = length(t);
tref = zeros(1, 3*(N-1) + 1);
for k = 1:N-1
	i = 3*(k-1)+1;
	dt = t(k+1)-t(k);
	tref(i) = t(k);
	tref(i+1) = t(k)+dt/3;
	tref(i+2) = t(k)+2*dt/3;
end
tref(3*(N-1)+1) = t(N);
endfunction
