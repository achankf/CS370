%figure('position',get(0,'screensize'))
%a= imread('hand.png');
[I map] = imread('hand.png');
imshow(I,map);

[x y] = ginput;
%figure('position',get(0,'screensize'))
%axes('position',[0 0 1 1])
%[x y] = ginput;
