function distancex = sprinter_root(v)
	options = odeset('Events',@hit_ground);
	[t Z] = ode45(@(t,z) sprinter(z,0.94), [0:0.05:5], [0,0,pi/8,v],options);
	distancex = Z(length(t),1) - 8.9;
