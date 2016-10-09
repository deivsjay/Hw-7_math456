 function w = forward_difference(xl,xr,yb,yt,M,N,l,r,f)
        D=1; % diffusion coefficient
        h=(xr-xl)/M; k=(yt-yb)/N; m=M-1; n=N;
        sigma=D*k/(h*h);
        a=diag(1-2*sigma*ones(m,1))+diag(sigma*ones(m-1,1),1);
        a=a+diag(sigma*ones(m-1,1),-1); % define matrix a
        lside=l(yb+(0:n)*k); rside=r(yb+(0:n)*k);
        w(:,1)=f(xl+(1:m)*h)'; % initial conditions

        for j=1:n
            w(:,j+1)=a*w(:,j)+sigma*[lside(j);zeros(m-2,1);rside(j)];
        end

        w=[lside;w;rside]; % attach boundary conds
        x=(0:m+1)*h;t=(0:n)*k;
        mesh(x,t,w') % 3-D plot of solution w
        view(60,30);axis([xl xr yb yt -1 1])
        figure
    end