function [Y drop] = compress(X, tol)
	limit = max(X(:)) * tol;
	temp = fft2(X);
	drop = 0;
	for i = [1:8]
		for j = [1:8]
			if (abs(temp(i,j)) < limit)
				temp(i,j) = 0;
				drop++;
			end
		end
	end
	Y = uint8(real(ifft2(temp)));
