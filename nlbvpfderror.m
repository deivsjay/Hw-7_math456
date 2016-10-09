function nlbvpfderror
for p = 2:7
    n = 2^p-1;
    w = nlbvpfd([1 2],[2 1],n);
end
a = 2/(3/2);
for i=2:7
    n(i) = 0;
    err(i) = 0;
end
for p = 2:7
    n(p) = n(p) + 2^p-1;
    err(p) = err(p) + abs(w((n(p)+1)/2)-a);
    %disp([n(p) err(p)])
end
loglog(n,err)
end