function [values,halt,dir] = hit_ground(t,z)
	values = z(2); halt = 0; dir = 0;
	if (z(2) <= 0)
		halt(1) = 1;
	end
