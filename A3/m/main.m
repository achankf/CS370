I = imread('dogBW.jpg');
%[Y drop] = compress(I, 0.2);
%rel_error = sqrt(mean2((B-Y).^2) / (mean2(Y.^2)));

vector_tol = [1 0.2256 0.1512 0.06409];
runall(I,vector_tol);
