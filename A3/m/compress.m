function [Y drop] = compress(f, tol)
	[W H] = size(f);
	num_drop = 0;
	num_nz_coe = 0;
	for i= 1:8:W
		for j = 1:8:H
			temp = fft2(f(i:i+7, j:j+7));
			num_nz_coe = num_nz_coe + nnz(temp);
			[temp num_dropped] = drop_small(temp, tol);
			num_drop = num_drop + num_dropped;
			Y(i:i+7, j:j+7) = uint8(real(ifft2(temp)));
		end
	end

	drop =0;
