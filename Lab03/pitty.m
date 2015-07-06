function c = pitty( ab )
%PITTY Summary of this function goes here
%   Detailed explanation goes here
a=ab(1:1:end,1);
b=ab(1:1:end,2);
a=a.*a;
b=b.*b;
c=sqrt(a+b);
end

