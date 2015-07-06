function [ V ] = replace_me(v,a,b,c)
%REPLACE_ME Summary of this function goes here
%   Detailed explanation goes here
    x=0;
    y=0;
    if(nargin==4)
        x=b;
        y=c;
    elseif(nargin==3)
        x=b;
        y=b;
    end
    V=[];
    for A=v
        if(A==a)
            V(end+1)=x;
            V(end+1)=y;
        else
            V(end+1)=A;
        end
    end
end

