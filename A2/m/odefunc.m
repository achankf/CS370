function dy = odefunc(t,z,p)
	g = 9.81;
	m = 90;
	c = 0.72;
	s = 0.5;

	dy = zeros(4,1);
	D = c * p * s / 2 * (dy(1)^2 + dy(2)^2);
	dy = [z(4) + cos(z(3));
		z(4) + sin(z(3));
		-g / z(4) * cos(z(3));
		-D / m - g * sin(z(3))];
endfunction
