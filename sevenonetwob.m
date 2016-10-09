function z = sevenonetwob(s)
   a = 0; 
   b = 1; 
   yb = 1;
   ydot = @(t,y)[y(2);3*y(1)-2*y(2)];
   [t,y]=ode45(ydot,[a,b],[(exp(1))^3,s]);
   z = y(end,1)-yb;
   plot(t,y)
   xlabel('t'),ylabel('y'),grid on
   title('BVP2 Shooting Method')
   figure
end