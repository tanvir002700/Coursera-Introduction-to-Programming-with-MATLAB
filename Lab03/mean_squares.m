function mm = mean_squares( nn )
%MEAN_SQUARES Summary of this function goes here
%   Detailed explanation goes here
a=1:nn;
a=a.*a;
mm=sum(a)/nn;
end

