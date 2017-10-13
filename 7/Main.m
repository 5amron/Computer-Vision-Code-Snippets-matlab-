I = imread('a7.tif');
 
T = 50;   % random (estimated)
dT = 0.5; % least distance

t = basicGlobalThreshold(I,T,dT);


outI = getThresh(I,t);
imshow(outI) 



