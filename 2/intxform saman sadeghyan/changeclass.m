% programmer : samanSadeghyan
function z = changeclass(class,varargin) 
switch class 
    case 'uint8' 
        z = im2uint8(varargin{:}); 
    case 'uint16' 
        z = im2uint16(varargin{:}); 
    case 'double' 
        z = im2double(varargin{:}); 
    otherwise 
        error('Unsupported IPT data class.'); 
end