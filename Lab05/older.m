function ret = older( y1,m1,d1, y2,m2,d2 )
%OLDER Summary of this function goes here
%   Detailed explanation goes here
    if ( (y1<y2) || (y1==y2 && m1<m2) || (y1==y2 && m1==m2 && d1<d2))
        ret=1;
    elseif (y1==y2 && m1==m2 && d1==d2)
        ret=0;
    else
        ret=-1;
    end
end

