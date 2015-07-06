function ret = moving_average( s )
%MOVING_AVERAGE Summary of this function goes here
%   Detailed explanation goes here
    persistent Q;
    Q=[Q(1:end),s];
    [a,b]=size(Q);
    if (b>25)
        Q=[ Q(2:end) ];
        disp('Ok');
        disp(Q);
    end
    [a,b]=size(Q);
    R=sum(Q);
    ret=R/b;
end

