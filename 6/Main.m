inputImg = imread('in.png');

s = strel('square',3);
byMatDilation = imdilate(inputImg,s);
byMatErosion = imerode(inputImg,s);

s = [1 1 1;1 1 1;1 1 1];

myselfOutputErosion = bimerosion(inputImg, s);

myselfOutputDilation = bimdilation(inputImg, s);


figure(1)
subplot(3,2,1)
imshow(inputImg)
title('input image');
subplot(3,2,3)
imshow(byMatDilation)
title('Dilation with matlab function');
subplot(3,2,4)
imshow(byMatErosion)
title('Erosion with matlab function');
subplot(3,2,5)
imshow(myselfOutputDilation)
title('Dilation by myself');
subplot(3,2,6)
imshow(myselfOutputErosion)
title('Erosion by myself');
