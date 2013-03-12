function [F num_dropped] = drop_small(F, tol)
	num_dropped = 0;
	F1 = abs(F);
	limit = max(F1(:)) * tol;
	for i = [1:8]
		for j = [1:8]
			if (F(i,j) ~= 0 && abs(F(i,j)) < limit)
				F(i,j) = 0;
				num_dropped = num_dropped + 1;
			end
		end
	end
