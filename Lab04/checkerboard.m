function board = checkerboard( n,m )
%CHECKERBOARD Summary of this function goes here
%   Detailed explanation goes here
    board=ones(n,m);
    for i=1:n
        cnt=rem(i,2);
        for j=1:m
            board(i,j)=cnt;
            cnt=1-cnt;
        end
    end
end

