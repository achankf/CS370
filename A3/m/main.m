% setup
I = imread('dogBW.jpg');
vector_tol = [0 0.001752 0.00279 0.00665];
rel_error = zeros(4);
drops = zeros(4);

% create figure 1 (the plots) and start the computation
fig1 = figure(1);
for i = 1:4
	tol = vector_tol(i);

	% computation
	[Y drop] = compress(I, tol);
	drops(i) = drop;
	rel_error(i) = sqrt(mean2((Y-I).^2) / (mean2(I.^2)));

	% draw the plots
	subplot(2,2,i); 
	colormap(gray(256)); image(Y); axis image; axis off;
	title(['tol=' num2str(tol) '; drop= ' num2str(drop) '%']);
end
saveas(fig1, 'plots.png', 'png');

% create figure 2 (error plot)
fig2 = figure(2);
plot(drops, rel_error, 'o');
title('Error Plot');
xlabel('Drops (%)');
ylabel('Error');
saveas(fig2, 'error.png', 'png');
