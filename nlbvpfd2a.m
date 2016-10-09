function W=nlbvpfd2a(inter,bv,n)
        a=inter(1); 
        b=inter(2); 
        ya=bv(1); 
        yb=bv(2);
        h=(b-a)/(n+1);
        W=zeros(n,1);
        
        for i=1:20
            W=W-jac2(W,inter,bv,n)\f1(W,inter,bv,n); 
        end
        
        for i=1:n+1
            z(i)=0;
            k(i)=0;
        end
        
        for i=1:n+1
           k(i)=k(i)+i*h;
           z(i)=z(i)+3*sin(pi*k(i)/3)-cos(pi*k(i)/3);
        end
        
        disp('The exact solutions of BVPs are')
        disp('y=')
        disp(z)
        disp('The approximate solutions of BVPs are')
        plot([a a+(1:n)*h b],[ya W' yb]); 
        grid on
        hold on
        plot(k,z)
        title('BVP')
        figure
end