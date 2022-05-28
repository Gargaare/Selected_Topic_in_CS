pkg load image;
filename = uigetfile();
img = imread(filename);

rgb = rgb2gray(img);

figure;
subplot(2,1,1); imshow(img); title("RGB - Original Image");
subplot(2,1,2); imshow(rgb); title("Graygscale Image");
