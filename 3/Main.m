
double_img = im2double(imread('a3.tif'));

n=5;
laplacian_mask = genratingLaplacian(n);
ex_5 = double_img - imfilter(double_img, laplacian_mask, 'replicate');
% imshow(ex_5)
n=9;
laplacian_mask = genratingLaplacian(n);
ex_9 = double_img - imfilter(double_img, laplacian_mask, 'replicate');
% imshow(ex_9)
n=15;
laplacian_mask = genratingLaplacian(n);
ex_15 = double_img - imfilter(double_img, laplacian_mask, 'replicate');
% imshow(ex_15)
n=25;
laplacian_mask = genratingLaplacian(n);
ex_25 = double_img - imfilter(double_img, laplacian_mask, 'replicate');
imshow(ex_25)


% ?? ?????? ????? ???? ??? ?? ?????? ?????? ???? ? ??? ?? ?? ???? ?? ?? ???. ??? ?? ??? ???? ??? ?? ???? ??? ?? ?????? ???? ?? ???? ????? ????? ?? ???? ?? ???? ???? ?? ???? ????? ??? ???? ??? ?? ?? ???? ?? ??? ?????. ???? laplacian ?????? ??? ????? ??? ????? ????? ?? ??? ? ?? ????? ?? ??? ???? ??? ?? ????? ?? ????.
