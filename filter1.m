pkg load image;
filename = uigetfile();
image=imread(filename);

image=255-image;
SER=[-1,0,1;-2,0,2;-1,0,1]; % Vertical lines on the righ hand side
SEL=[1,0,-1;2,0,-2;1,0,-1]; % Vertical lines on the left hand side

f_img_R=imfilter(image, SER);
f_img_L=imfilter(image, SEL);
comb=f_img_L+f_img_R;

figure;
subplot(2,2,1); imshow(image); title("Original Image");
subplot(2,2,2); imshow(f_img_R); title("Right Vertical Line");
subplot(2,2,3); imshow(f_img_L); title("Left Vertical Line");
subplot(2,2,4); imshow(comb); title("L and R Combined")