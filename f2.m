function y = f2(W,inter,bv,n)
    y=zeros(n,1); 
    h=(inter(2)-inter(1))/(n+1);
    y(1)=(1-h)*bv(1)-(2+3*(h^2))*W(1)+(1+h)*W(2);
    y(n)=(1-h)*W(n-1)-(2+3*(h^2))*W(n)+(1+h)*bv(2);
    
    for j=2:n-1
       y(j)=(1-h)*W(j-1)-(2+3*(h^2))*W(j)+(1+h)*W(j+1); 
    end
end