function ret = integerize( M )
%INTEGERIZE Summary of this function goes here
%   Detailed explanation goes here
    a=max(M);
    if(a<=intmax('uint8'))
        ret='uint8';
    elseif(a<=intmax('uint16'))
        ret='uint16';
    elseif(a<=intmax('uint32'))
        ret='uint32';
    elseif(a<=intmax('uint64'))
        ret='uint64';
    else
        ret='NONE'; 
    end
end