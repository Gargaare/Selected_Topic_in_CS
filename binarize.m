pkg load image;
filename = uigetfile();
img = imread(filename);

img_g = img;
img_g = rgb2gray(img);

img_bw = img_g;

for i=1:rows(img_g)
  for j=1:columns(img_g)
    if img_g(i,j)>25
      image_bw(i,j)=225;
    else
      image_bw(i,j)=0;
    endif
  endfor
endfor

img_bw=225-img_bw;

figure;

subplot(1,3,1); imshow(img); title("Original Image");
subplot(1,3,2); imshow(img_g); title("Grayscale");
subplot(1,3,3); imshow(img_bw); title("Black and White");
