function [t] = findt(x,y)
	len = length(x);
	t = zeros(1, len);
	for p = 2:length(x)
		prev = p-1;
		distance = sqrt((x(prev) - x(p))^2 + (y(prev)-y(p))^2);
		t(p) = t(prev) + distance;
	end
endfunction
