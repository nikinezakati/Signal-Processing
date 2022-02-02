clc; clear all; close all;


Im = imread('photo.png');

I=rgb2gray(Im);
subplot(311); imshow(I, [])
title('Original Photo')

img=double(I);

J = awgn(img,6,'measured');
subplot(312);imshow(J, [])
title('Original Photo with Noise')

xden = medfilt2(J);
subplot(313); imshow(xden, [])
title('Original Photo Denoised')

figure
imshowpair(img,img,'diff')

figure
imshowpair(img,J,'diff')

figure
imshowpair(img,xden,'diff')