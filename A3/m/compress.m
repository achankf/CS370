function [Y drop] = compress(f, tol)
	F = blkproc(f, [8 8], @fft2);
	drop_original = nnz(F);
	F = blkproc(F, [8 8], @drop_small, tol);
	drop_compressed = nnz(F);
	Y = blkproc(F, [8 8], @revert);
	drop =  drop_compressed / drop_original
