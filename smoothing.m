function im_out = smoothing(sigma, img)

N = 4*sigma + 1;

x = -floor(N/2): floor(N/2);
y = -floor(N/2): floor(N/2);
[xx, yy] = meshgrid(x,y);



g_val = 1 / (2*pi*sigma^2) .* exp(-(xx.^2+yy.^2)./(2*sigma^2));

im_out = conv2(img, g_val);



end