function [f] = revert(F)
	f = uint8(real(ifft2(F)));
