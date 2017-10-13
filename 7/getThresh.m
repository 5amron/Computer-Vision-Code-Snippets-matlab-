function outI = getThresh(I, T)

gg = I>T;
outI = gg.*255;

end