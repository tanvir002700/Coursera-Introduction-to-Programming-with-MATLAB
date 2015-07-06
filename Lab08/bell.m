function x = bell(n)
    % Check input (integer >= 1)
    if (n ~= floor(n)) || (n < 1)
        x = [];
    elseif (n == 1)
        % Special case of n = 1
        x = 1;
    else
        % Make matrix of zeros
        x = zeros(n);
        % Fill in top-left corner for 2-by-2
        x(1:2,1:2) = [1 2;1 0];
        % Loop over remaining "lines"
        for k = 3:n
            % 1st element of the line k is the last element of line k-1
            x(k,1) = x(1,k-1);
            % Loop over the remaining elements
            for j = 2:k
                % jth element is sum of j-1 element of current line plus
                % j-1 element of previous line
                x(k-j+1,j) = x(k-j+1,j-1) + x(k-j+2,j-1);
            end
        end
    end
end