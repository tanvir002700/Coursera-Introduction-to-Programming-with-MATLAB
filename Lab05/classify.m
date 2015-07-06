function ret = classify( v )
%CLASSIFY Summary of this function goes here
%   Detailed explanation goes here
    [n,m]=size(v);
    if(n==0 || m==0)
        ret=-1;
    elseif (n==1 && m==1)
        ret=0;
    elseif(n==1 || m==1)
        ret=1;
    else
        ret=2;
    end
end

