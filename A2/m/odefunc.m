function dy = odefunc(t,z,p)
	z1 = z(1);
	z2 = z(2);
	z3 = z(3);
	z4 = z(4);
	g = 9.81;
	m = 90;
	c = 0.72;
	s = 0.5;

	dy = zeros(4,1);
	dy(1) = z4 + cos(z3);
	dy(2) = z4 * sin(z3);
	D = c * p * s / 2 * (dy(1)^2 + dy(2)^2);
	dy(3) = -g / z4 * cos(z3);
	dy(4) = -D / m - g * sin(z3);
endfunction
