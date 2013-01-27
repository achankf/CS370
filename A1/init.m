%figure('position',get(0,'screensize'))
%a= imread('hand.png');
%[I map] = imread('initial.png');
% Load some image:
data = imread('initial.png');

% display the image:
figure(1);
clf;
h = imagesc(data);
axis image

% Get a value from the screen:
[x, y] = ginput;
