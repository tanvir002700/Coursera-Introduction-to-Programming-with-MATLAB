function a = odd_index( M )
%ODD_INDEX Summary of this function goes here
%   Detailed explanation goes here
[x,y]=size(M);
a=M(1:2:x,1:2:y);

end

