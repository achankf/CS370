function [values,halt,dir] = events(t,z)
	%values = [z(1) z(2) z(3) z(4)];
	%halt = [1 1 1 1];
	%dir = [0 0 0 0];
	values = zeros(1,1);
	values(1) = z(2);
	halt = zeros(1,1);
	dir = zeros(1,1);
	if (z(2) <= 0)
		halt(1) = 1;
	end
endfunction
