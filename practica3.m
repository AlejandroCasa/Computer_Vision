clear all
close all
clc

imagen = imread('frame.jpg');
frame = rgb2gray(imagen);

frame2 = imresize(frame,1/2);
frame4 = imresize(frame,1/4);
frame8 = imresize(frame,1/8);

[counts,binLocations] = imhist(frame);

figure(1)
plot(binLocations,counts)


BW = imbinarize(frame,156/255);

figure(2)
imshowpair(frame,BW,'montage')


