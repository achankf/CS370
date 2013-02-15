function animation(t,Z)
	for i = 1:length(t)
		plot(Z(1:i,1),Z(1:i,2));
		pause;
	end
