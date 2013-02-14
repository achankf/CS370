function [values,halt,dir] = hit_ground(t,z)
	values = zeros(1,1);
	values(1) = z(2);
	halt = zeros(1,1);
	dir = zeros(1,1);
	if (z(2) <= 0)
		halt(1) = 1;
	end
