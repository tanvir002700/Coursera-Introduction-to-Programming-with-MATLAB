function p = prime_pairs(n)
    if isprime(2+n)             % many times the answer is 2
        p = 2;
    elseif rem(n,2)             % if not, and n is odd, no such prime exists
        p = -1;
    else
        for p = primes(1e5)     % check all primes smaller than 100,000
            if isprime(p+n)     % if p+n is prime
                return;         % found it! Return immediately
            end
        end
        p = -1;                 % none found (btw, we never get here)
    end
end
% It turns out that for n-s smaller than 100,000 that are even, there is
% always a pretty small such prime. In fact, the largest is 227.
% So we could use primes(300) instead of primes(1e5) to make this even
% faster. Also, the for-loop would be slow, if we did not check for even n-s,
% since it would need to go through all primes smaller than 100,000 to
% realize that no solution exists. So, handling the first two cases (p is 2
% and n is odd) separately makes the function very efficient.