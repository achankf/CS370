function animation(t,Z)
	for i = 1:length(t)
		plot(t(1:i),Z(1:i,1),t(1:i),Z(1:i,2));
		pause;
	end
