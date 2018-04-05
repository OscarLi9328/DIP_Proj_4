%% Problem 1
clc
close all
clear

F = 0.059*512;
theta = (135/180)*pi;
sigma = 8;
sigma2 = 24;


text2 = imread('texture2.gif');
text2 = double(text2);

figure()
subplot(2,3,1);
imshow(text2, []);
title('original');
subplot(2,3,4)
surf(text2);

im_out = Gabor(F, theta, sigma, text2);
subplot(2,3,2);
imshow(im_out, []);
title('Gabor filter')
subplot(2,3,5)
surf(im_out);

im2 = smoothing(sigma2, im_out);
subplot(2,3,3);
imshow(im2, []);
title('smoothing filter')
subplot(2,3,6)
surf(im2);

%% Problem 2
clc
close all
clear

F = 0.042*512;
theta = 0;
sigma = 24;
sigma2 = 24;


text1 = imread('texture1.gif');
text1 = double(text1);

figure()
subplot(2,3,1);
imshow(text1, []);
title('original');
subplot(2,3,4)
surf(text1);

im_out = Gabor(F, theta, sigma, text1);
subplot(2,3,2);
imshow(im_out, []);
title('Gabor filter')
subplot(2,3,5)
surf(im_out);

im2 = smoothing(sigma2, im_out);
subplot(2,3,3);
imshow(im2, []);
title('smoothing filter')
subplot(2,3,6)
surf(im2);

%% Problem 3

clc
clear

F = 0.05*512;
theta = (-100/180)*pi;
% x = 12; y = 18;
% theta = atan(y/x);
sigma = 8;


text = imread('d9d77.gif');
text = double(text);

figure()
subplot(2,2,1);
imshow(text, []);
title('original');
subplot(2,2,3)
surf(text);

im_out = Gabor(F, theta, sigma, text);
subplot(2,2,2);
imshow(im_out, []);
title('Gabor filter')
subplot(2,2,4)
surf(im_out);



