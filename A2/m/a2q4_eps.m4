addpath('syscmd(`echo -n $(pwd)/m')');
options = odeset('Events',@hit_ground);
domain = [0:0.05:5];
initial = [0,0,pi/8,10];

[t Z] = ode45(@(t,z) sprinter(z,0.94), domain, initial, options);
plot(Z(:,1),Z(:,2));
print -deps grapha.eps

[t Z] = ode45(@(t,z) sprinter(z,1.29), domain, initial, options);
plot(Z(:,1),Z(:,2));
print -deps graphb.eps
