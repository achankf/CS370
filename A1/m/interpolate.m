function [tx ty] = interpolate(x,y,end_type,refine_fac)
	t = findt(x,y);
	ppx = csape(t,x,end_type);
	ppy = csape(t,y,end_type);
	tref = refinet(t,refine_fac);
	tx = ppval(ppx,tref);
	ty = ppval(ppy,tref);
endfunction
