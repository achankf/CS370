g = 9.81;
m = 90;
c = 0.72;
s = 0.5;
[g m c s] = {1 3 4 5}{:};
options = odeset('Events',@hit_ground);
[t Z] = ode45(@(t,z) odefunc(t,z,1.29,g,m,c,s),[0:0.05:5], [0,0,pi/8,10],options);
distance_b = Z(length(Z),1)
[t Z] = ode45(@(t,z) odefunc(t,z,0.94,g,m,c,s),[0:0.05:5], [0,0,pi/8,10],options);
distance_a = Z(length(Z),1)
plot(t,Z);
