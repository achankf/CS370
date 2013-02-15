options = odeset('Events',@hit_ground);
domain = [0:0.05:5];
initial = [0,0,pi/8,10];

[t Z] = ode45(@(t,z) sprinter(z,0.94), domain, initial, options);
distance_a = Z(length(Z),1)
[t Z] = ode45(@(t,z) sprinter(z,1.29), domain, initial, options);
distance_b = Z(length(Z),1)
v0 = fzerotx('sprinter_root',[-10,100])
[t Z] = ode45(@(t,z) sprinter(z,1.29), domain, [0,0,pi/8,v0], options);
distance_d = Z(length(Z),1)
