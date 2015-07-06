function v = int_col( n )
%INT_COL Summary of this function goes here
%   Detailed explanation goes here
v=1:n;
v=v+1;
v(end)=1;
v=reshape(v,n,1)
end

