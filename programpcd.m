#membaca gambar
gambar_kelompok = imread("kelompok7.jpg");

#merubah ke format RGB
red=gambar_kelompok(:,:,1);
green=gambar_kelompok(:,:,2);
blue=gambar_kelompok(:,:,3);
#mencari nilai rata-rata 
citra_keabuan=(red+green+blue)/3;



#mengubah dengan transformasi logaritmik soal1 point 3
#memberikan 3 nilai konstanta yang berbeda
konstanta1=0.001;
konstanta2=0.05;
konstanta3=0.1;
logaritmik1 = konstanta1*log(citra_keabuan+1);
logaritmik2 = konstanta2*log(citra_keabuan+1);
logaritmik3 = konstanta3*log(citra_keabuan+1);


#meanampilkan output setelah transformasi logaritmik
imshow(logaritmik1);
imshow(logaritmik2);
imshow(logaritmik3);

#menampilkan histogram
hist(logaritmik1);
hist(logaritmik2);
hist(logaritmik2);



# tugas 2
# menambah citra keabuan
citra2a=citra_keabuan+80;
citra2b=citra_keabuan-80;

#menampilkan output citra
imshow(citra2a);
imshow(citra2b);

#menampilkan histogram 
hist(citra2a);
hist(citra2b);

#sobel
Sobel_x = [ -1 0 1 ; -2 0 2; -1 0 1 ]
Sobel_y = [ 1 2 1 ; 0 0 0 ; -1 -2 -1 ]


#sobel 2a
sobelSx_a = conv2(citra2a, Sobel_x);
sobelSy_a = conv2(citra2a, Sobel_y);
sobel_a = abs(sobelSx_a) + abs(sobelSy_a);
imshow(uint8(sobel_a));  

#sobel 2b
sobelSx_b = conv2(citra2b, Sobel_x);
sobelSy_b = conv2(citra2b, Sobel_y);
sobel_b = abs(sobelSx_b) + abs(sobelSy_b);
imshow(uint8(sobel_b));  

