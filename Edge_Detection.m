%-------------------- Applying Gradient of Gaussian Edge Detection---------
originalImage = imread('peppers.png');
grayOriginalImage = rgb2gray(originalImage);
gaussianFilter = fspecial('gaussian', [3 3], 5);
filteredImage = imfilter(grayOriginalImage, gaussianFilter);
[Gx, Gy] = imgradientxy(filteredImage);
[Gmag, Gdir] = imgradient(Gx,Gy);
imshowpair(Gmag, Gdir,'montage');
%%
%-------------------- Applying Laplacian of Gaussian Edge Detection -------
originalImage = imread('peppers.png');
grayOriginalImage = rgb2gray(originalImage);
filteredImage = edge(grayOriginalImage, 'log');
imshow(filteredImage );
%%
%-------------------- Applying Canny Edge Detection  ----------------------
originalImage = imread('peppers.png');
grayOriginalImage = rgb2gray(originalImage);
filteredImage = edge(grayOriginalImage, 'Canny');
imshow(filteredImage);