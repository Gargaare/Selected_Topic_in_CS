pkg load image;
filename = uigetfile();
img=imread(filename);

img=255-img;
SE=[-1,0,1;-2,0,2;-1,0,1];

f_img=imfilter(img, SE);
f_img=255-f_img;
f_img=255-f_img;

figure;
subplot(2,1,1); imshow(img); title("Original Image");
subplot(2,1,2); imshow(f_img); title("Vertical Line");

