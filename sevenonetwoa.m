function z = sevenonetwoa(s)
   a = 0; 
   b = 3/2; 
   yb = 3;
   ydot = @(t,y)[y(2);-(pi^2/9)*y(1)];
   [t,y]=ode45(ydot,[a,b],[-1,s]);
   z = y(end,1)-yb;
   plot(t,y)
   xlabel('t'),ylabel('y'),grid on
   title('BVP1 Shooting Method')
   figure
end