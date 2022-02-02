clc; clear all; close all;


Im = imread('photo.png');

I=rgb2gray(Im);

BW1 = edge(I,'sobel');
BW2 = edge(I,'canny');

tiledlayout(1,2)

nexttile
imshow(BW1, [])
title('Sobel Filter')

nexttile
imshow(BW2, [])
title('Canny Filter')