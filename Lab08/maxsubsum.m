function [x y rr cc s] = maxsubsum(A)
    [row col] = size(A);
    % initialize result to the 1-by-1 subarray at the top left corner of A
    x = 1;                                      % top left corner of subarray
    y = 1;                                      % top left corner of subarray
    rr = 1;                                     % height of subarray
    cc = 1;                                     % width of subarray
    s = A(1,1);                                 % sum

    for r = 1:row                               % height of subarray
        for c = 1:col                           % width of subarray
            for ii = 1:row-r+1                  % start position row
                for jj = 1:col-c+1              % start position col
                    tmp = sum(sum(A(ii:ii+r-1,jj:jj+c-1))); % sum up candidate
                    if tmp > s                  % if larger than current max
                        s = tmp;                % set the new values
                        x = ii;
                        y = jj;
                        cc = c;
                        rr = r;
                    end
                end
            end
        end
    end
end