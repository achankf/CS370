[err1 ratio1] = euler_error(@(N) myEuler(0,4,N,0),4,10);
[err2 ratio2] = euler_error(@(N) myImprEuler(0,4,N,0),4,10);
myEuleErr = [err1' ratio1']
myImprEulerErr = [err2' ratio2']
