t = 4;
e = 2.71828182846;
z = (e^t + e^(-t) - t^2) / 2 - 1;
[err1 ratio1] = euler_error(@(N) myEuler(0,t,N,0),z,10);
[err2 ratio2] = euler_error(@(N) myImprEuler(0,t,N,0),z,10);
[[err1' ratio1'] [err2' ratio2']]
