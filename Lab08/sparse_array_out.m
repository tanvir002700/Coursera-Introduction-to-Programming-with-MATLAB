function success = sparse_array_out (A, filename)
    fid = fopen (filename,'w+');
    success = fid>=0;
    if ~success
        error ('Error opening file %s\n',filename)
    end
    [r,c,v] = find(A);                       % locations and values of non-zero elements
    [nr,nc] = size(A);                       % dimensions of A
    nze = length(v);                         % number of non-zero elements
    fwrite (fid, [nr,nc,nze], 'uint32');     % global data
    for k = 1:nze                            % for each non-zero element ...
        fwrite (fid, [r(k),c(k)], 'uint32'); % row-column index
        fwrite (fid, v(k), 'double');        % value
    end
    fclose(fid);
end