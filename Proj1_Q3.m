img=imread('coins.png');
figure;imshow(img,[]);title('Coins Image');
fltr=1/9*[1,1,1;1,1,1;1,1,1];
Fil=imfilter(img,fltr);
figure;imshow(Fil);title('After Application of Filter');