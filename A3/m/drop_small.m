function [F num_dropped] = drop_small(F, tol)
	%F1 = real(ifft2(F));
	num_dropped = 0;
	F1 = abs(real(F));
	limit = max(F1(:)) * tol;
	for i = [1:8]
		for j = [1:8]
c = abs(F(i,j)) < limit;
			if (abs(F(i,j)) < limit)
				F(i,j) = 0;
				num_dropped = num_dropped + 1;
			end
		end
	end
