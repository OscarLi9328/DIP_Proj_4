function im_out = Gabor(F, theta, sigma, img)

N = 4*sigma + 1;

x = -floor(N/2): floor(N/2);
y = -floor(N/2): floor(N/2);
[xx, yy] = meshgrid(x,y);



g_val = 1 / (2*pi*sigma^2) .* exp(-(xx.^2+yy.^2)./(2*sigma^2));
h_val = g_val .* exp(1i*2*pi*F*(xx.*cos(theta)+yy.*sin(theta)));

im_out = abs(conv2(img, h_val));


end