pkg load image;
filename = uigetfile();
img=imread(filename);

figure;
subplot(2,1,1); imshow(img); title("Original Image");
subplot(2,1,2); imhist(img); title("Histogram of the Image");
