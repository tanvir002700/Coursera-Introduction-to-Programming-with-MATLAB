function  ans  = neighbor( v )
%NEIGHBOR Summary of this function goes here
%   Detailed explanation goes here
    ans=[];
    [x,y]=size(v);
    if(x==1)
        for i=2:y
            ans(end+1)=abs(v(i)-v(i-1));
        end
    end
end