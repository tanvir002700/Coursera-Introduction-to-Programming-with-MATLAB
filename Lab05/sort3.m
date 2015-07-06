function v = sort3( a,b,c )
%SORT3 Summary of this function goes here
%   Detailed explanation goes here

    if (a<=b && b<=c)
        v=[a,b,c];
    elseif (a<=c && c<=b)
        v=[a,c,b];
    elseif (b<=a && a<=c)
        v=[b,a,c];
    elseif (b<=c && c<=a)
        v=[b,c,a];
    elseif (c<=a && a<=b)
        v=[c,a,b];
    elseif (c<=b && b<=a)
        v=[c,b,a];
    end
end

