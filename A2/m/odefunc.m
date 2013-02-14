function dy = odefunc(t,z,p,g,m,c,s)
	g = 9.81;
	m = 90;
	c = 0.72;
	s = 0.5;

	dy = zeros(4,1);
	dy(1) = z(4) + cos(z(3));
	dy(2) = z(4) * sin(z(3));
	D = c * p * s / 2 * (dy(1)^2 + dy(2)^2);
	dy(3) = -g / z(4) * cos(z(3));
	dy(4) = -D / m - g * sin(z(3));
