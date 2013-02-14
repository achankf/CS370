function dy = sprinter_de(theta,v,p)
	g = 9.81; m = 90; c = 0.72; s = 0.5;
	dy = zeros(4,1);
	dy(1) = v + cos(theta);
	dy(2) = v * sin(theta);
	D = c * p * s / 2 * (dy(1)^2 + dy(2)^2);
	dy(3) = -g / v * cos(theta);
	dy(4) = -D / m - g * sin(theta);
