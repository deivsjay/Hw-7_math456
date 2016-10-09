function y = f1(W,inter,bv,n)
    y=zeros(n,1); 
    h=(inter(2)-inter(1))/(n+1);
    y(1)=9*bv(1)-(18-(h^2)*(pi^2))*W(1)+9*W(2);
    y(n)=9*W(n-1)-(18-(h^2)*(pi^2))*W(n)+9*bv(2);
    
    for i=2:n-1
        y(i)=9*W(i-1)-(18-(h^2)*(pi^2))*W(i)+9*W(i+1); 
    end
end