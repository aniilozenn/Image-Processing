img=imread("scenary.jpeg");
figure(1);
imshow(img);
size_img=size(img);
M=size_img(1);
N=size_img(2);
C=zeros(M,N);
disp(C);
R_sqrt=200^2;
for i=1:M
    for j=1:N
        dist=(300-i)^2+(500-j)^2;
        if dist<R_sqrt
            C(i,j)=1;
        end
    end
end
figure(2);
imshow(C);
disp(class(C));
axis on;
%iki resmi çarpaçağım eleman elemana(her pixel ona karşılık glen pixelle) çarpılması için
%.* yaparak çarpıyorum.
Multiply_image=double(img).*C;
Multiply_image=uint8(Multiply_image);
figure(3);
imshow(Multiply_image);