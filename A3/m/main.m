I = imread('dogBW.jpg');
B = blkproc(I, [8 8], @compress, 0.8);
