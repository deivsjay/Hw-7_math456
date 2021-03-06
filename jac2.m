function a = jac2(W,inter,bv,n)
    a=zeros(n,n); 
    h=(inter(2)-inter(1))/(n+1);

    for i=1:n
       a(i,i)=-2+3*(h^2); 
    end

    for i=1:n-1
       a(i,i+1)=1;
       a(i+1,i)=1;
    end
end