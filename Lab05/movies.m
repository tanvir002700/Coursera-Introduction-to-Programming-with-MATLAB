function ret = movies( hr1, min1, durmin1, hr2, min2, durmin2 )
%MOVIES Summary of this function goes here
%   Detailed explanation goes here
    s1=hr1*60+min1;
    s2=hr2*60+min2;
    e1=s1+durmin1;
    if(e1<=s2 && (s2-e1)<=30)
        ret=1;
    else
        ret=0;
    end
end

