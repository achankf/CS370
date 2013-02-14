data = imread('hand_final.png');
clf;
h = imagesc(data);
axis image;
[x, y] = ginput;
