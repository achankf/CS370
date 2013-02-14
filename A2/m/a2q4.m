options = odeset('Events',@events,'Refine',2);
[t Z] = ode45(@(t,z) odefunc(t,z,1.29),[0:0.05:5], [0,0,pi/8,10],options);
distance_b = Z(length(Z),1)
[t Z] = ode45(@(t,z) odefunc(t,z,0.94),[0:0.05:5], [0,0,pi/8,10],options);
distance_a = Z(length(Z),1)
plot(t,Z);
