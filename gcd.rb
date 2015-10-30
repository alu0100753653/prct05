def gcd(n, d)
    n1 = abs(n);
    n2 = abs(d)
    gcd = 1
    k = 1
    while k <= n1 and k <= n2
        if n1 % k == 0 and n2 % k == 0
            gcd = k
        end
        k += 1
    end
    return gcd
end