imshow(Cam1d);title('Distorted Image');
F=fftshift(fft2(Cam1d));
figure;imshow(log(abs(F)),[]);title('Fourier of Distorted Image');
for i=1:256
    F(128,i)=0;
    F(127,i)=0;
    F(129,i)=0;
    
    F(i,104)=0;
    F(i,103)=0;
    F(i,105)=0;
    
    F(i,155)=0;
    F(i,154)=0;
    F(i,156)=0;
end
figure;imshow(log(abs(F)),[]);title('Fourier after Correction');
figure;imshow(ifft2(ifftshift(F)),[]);title('Corrected Image');