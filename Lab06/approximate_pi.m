function [a,k] = approximate_pi(delta)
    k = 0;
    f = sqrt(12);                       % compute sqrt(12) only once
    a = f;                              % the value of a for k == 0
    while abs(pi-a) > delta             % while we are further away than delta
        k = k + 1;                      % increment k
        a = a + f*(-3)^(-k)/(2*k+1);    % add increment to current value of a
    end
end