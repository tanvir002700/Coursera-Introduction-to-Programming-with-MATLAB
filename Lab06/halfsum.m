function sum = halfsum( v )
%HALFSUM Summary of this function goes here
%   Detailed explanation goes here
    sum=0;
    [x,y]=size(v);
    for i=1:x
        for j=i:y
            sum=sum+v(i,j);
        end
    end
end

