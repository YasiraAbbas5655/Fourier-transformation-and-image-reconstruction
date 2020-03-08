load('E:\5th semester\Digital Image Processing\Project1\DIP1.mat');

figure;imshow(Cam1b);title('Distorted Image');
X=fftshift(fft2(Cam1b));
figure;imshow(abs(X),[]);title('Fourier Transformation of Distorted Image');
X(88,88)=0;
X(170,170)=0;
figure;imshow(abs(X),[]);title('Corrected Fourier Transformation of Distorted Image');
oImg=(ifft2(ifftshift(X)));
figure;imshow((abs(oImg)),[]);title('Restored Image');