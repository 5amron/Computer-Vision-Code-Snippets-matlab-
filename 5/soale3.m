
% imread: Reads the image file and loads it into the memory
I = imread ('peppers.png');
% clear the workspace
% close all open figures
% clear the text in command window
I_gray = rgb2gray(I);
figure ('Name','Original Image');imshow(I);
figure ('Name','Gray Image'); imshow (I_gray);

% brighten: Depending on a positive or a negative argument, modifies the
% colormap and icreases or decreases the brightness of the image.
I_br = brighten (double(I_gray),0.5);
I_dr = brighten (double(I_gray),-0.5);
figure('Name','Brightened Image');imshow (I_br);
figure('Name','Darkened Image'); imshow (I_dr);

% Contrast: Returns an enhannced contrast image by creating a new colormap with ...
       an approximately equal intensity distribution
cmap = contrast(double(I_gray));
figure ('Name','Contrast Enhancement'); imshow (I_gray); colormap(cmap);

% histeq: Histogram equalization changes the contrast by changing the
% histo such that more colors are visible
I_histeq = histeq(I_gray);
figure ('Name','Histogram Equalization');imshow (I_histeq);

 % imcontrast: Manual contrast adjustment tool by changing the lower and
% higher bounds of the histogram
figure ('Name','Adjusted Contrast Manually'); imshow (I_gray);
imcontrast (gca)

 % imadjust: Increases the contrast by saturating 1% of data at lower and higher
% intensity bounds
figure('Name','imadjust'); imshow (imadjust(I_gray));