function ok = queen_check(board)
    n = 8;
    ok = true;
    v = board(:);                           % create a vector in col major order
    w = v(end:-1:1);                        % reverse order, so last col becomes first col
    for ii = 1:n
        tests = [
                sum(board(:,ii))            % row #ii
                sum(board(ii,:))            % col #ii
                sum(v(ii:n+1:(n-ii+1)*n))   % diagonal starting in the first column going down
                sum(v(ii:n-1:ii*n-1))       % diagonal starting in the first column going up
                sum(w(ii:n+1:(n-ii+1)*n))   % diagonal starting in the last  column going up
                sum(w(ii:n-1:ii*n-1))       % diagonal starting in the last  column going down
                ];
        if max(tests) > 1                   % these should be all 0 or 1
            ok = false;                     % otherwise return false
            return;
        end
    end
end