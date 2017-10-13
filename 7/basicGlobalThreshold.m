function thresh = basicGlobalThreshold(I,T,dT)
 
maxVar = max(I(:));
if(T >= maxVar)
    T = maxVar-1;
end 

[vv, hh] = size(I); 
totalSize = hh*vv;

v = double(reshape(I, 1, totalSize));

newThreshold = T;

prevThreshold = dT;

while(abs(newThreshold - prevThreshold)>dT)
 
    lowerPixel = 0;
    lowerVal = 0;
    upperPixel = 0;
    upperVal = 0;
 
    prevThreshold=newThreshold; % assign new T value to the previous value of T
                
    for i=1:totalSize
        if(v(i)<=prevThreshold)
            lowerVal = lowerVal + 1;
            lowerPixel = lowerPixel + v(i);
        else 
            upperVal = upperVal + 1;
            upperPixel = upperPixel + v(i);
        end
    end
    
    mean_1 = lowerPixel/lowerVal; % mean of intensity less than prevThreshold
    mean_2 = upperPixel/upperVal; % mean of intensity more than prevThreshold

    newThreshold=(mean_1+mean_2)/2; % new
    
end
 
thresh=newThreshold;

end
