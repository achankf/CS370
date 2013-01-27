data = imread('initial.png');
clf;
h = imagesc(data);
axis image;
[x, y] = ginput;
