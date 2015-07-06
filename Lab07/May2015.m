function  S  = May2015
%MAY2015 Summary of this function goes here
%   Detailed explanation goes here
    Day=['Mon' ; 'Tue' ; 'Wed' ; 'Thu' ; 'Fri' ; 'Sat' ; 'Sun'];
    ptr=5;
    for i=1:31
        S(i).month='May';
        S(i).date=i;
        S(i).day=Day(ptr,1:end);
        ptr=ptr+1;
        if(ptr==8)
            ptr=1;
        end
    end

end

