function A = sparse_array_in (filename)
    A = [];
    fid = fopen(filename,'r');
    if fid<0
        error ('Error opening file %s\n',filename)
    end
    x = fread(fid,3,'uint32');                  % global data (nr, nc, nze)
    A = zeros(x(1),x(2));                       % initialize new nr x nc matrix
    for k=1:x(3)                                % for each non-zero element ...
        z = fread(fid,2,'uint32');              % row, column
        A(z(1),z(2)) = fread(fid,1,'double');   % value
    end
    fclose(fid);
end