% programmer : samanSadeghyan
function h = changeclass(class,varargin) 
switch class 
    case 'uint8' 
        h = im2uint8(varargin{:}); 
    case 'uint16' 
        h = im2uint16(varargin{:}); 
    case 'double' 
        h = im2double(varargin{:}); 
    otherwise 
        error('Unsupported IPT data class.'); 
end