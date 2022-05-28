pkg load image;
filename = uigetfile();
img = imread(filename);

img_neg = 255 - img;

figure;
subplot(2,1,1); imshow(img); title("Original Image");
subplot(2,1,2); imshow(img_neg); title("Negative of an Image");
