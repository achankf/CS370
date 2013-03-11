function [F] = drop_small(F, tol)
	%F1 = real(ifft2(F));
	F1 = abs(real(F));
	limit = max(F1(:)) * tol;
	for i = [1:8]
		for j = [1:8]
			if (abs(F(i,j)) < limit)
				F(i,j) = 0;
			end
		end
	end
