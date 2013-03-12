function [Y drop] = compress(f, tol)
	[W H] = size(f);
	num_drop = 0; % counts # of drops
	num_nz_coe = 0; %counts # of non-zeros in original

	for i= 1:8:W
		for j = 1:8:H
			F = fft2(f(i:i+7, j:j+7));
			num_nz_coe = num_nz_coe + nnz(F);
			F1 = abs(F);
			limit = max(F1(:)) * tol;

			% look for F_kl that will be dropped
			for k = [1:8]
				for l = [1:8]
					if (F(k,l) ~= 0 && abs(F(k,l)) < limit)
						F(k,l) = 0;
						num_drop = num_drop + 1;
					end
				end
			end

			Y(i:i+7, j:j+7) = uint8(real(ifft2(F)));
		end
	end
	drop = num_drop / num_nz_coe;
