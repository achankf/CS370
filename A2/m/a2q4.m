g = 9.81;
m = 90;
c = 0.72;
s = 0.5;
options = odeset('Events',@hit_ground);
domain = [0:0.05:5];
initial = [0,0,pi/8,10];
[t Z] = ode45(@(t,z) odefunc(t,z,0.94,g,m,c,s), domain, initial, options);
distance_a = Z(length(Z),1)
plot(t,Z); pause;
[t Z] = ode45(@(t,z) odefunc(t,z,1.29,g,m,c,s), domain, initial, options);
distance_b = Z(length(Z),1)
plot(t,Z); pause;
