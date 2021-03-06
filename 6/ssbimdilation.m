function myselfOutputDilation = bimdilation(inputImg, s)
% Binary Image DILATION
% inputImg : binary input image
% s : a 3*3 martix as a structuring element 
% outDilation : output dilated image

imgSize = size(inputImg);


for x=2:1:imgSize(1)-1
    for y=2:1:imgSize(2)-1
         aa = [s(1)*inputImg(x-1,y-1) s(2)*inputImg(x-1,y) s(3)*inputImg(x-1,y+1) s(4)*inputImg(x,y-1) s(5)*inputImg(x,y) s(6)*inputImg(x,y+1) s(7)*inputImg(x+1,y-1) s(8)*inputImg(x+1,y) s(9)*inputImg(x+1,y+1)];
         myselfOutputDilation(x,y) = max(aa); %Dilation
    end
end



