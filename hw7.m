clear,clc

% Problem 7.1.2

% a.)

z = sevenonetwoa(3);
z = sevenonetwoa(4);

sstar = fzero(@sevenonetwoa,[3,4]);
syms y(t)
Dy = diff(y);
D2y = diff(y,2);

dsolve('D2y=-(pi^2/9)*y','y(0)=-1','Dy(0)=pi');
        
% b.)

z = sevenonetwob(-61);
z = sevenonetwob(-60);

sstar = fzero(@sevenonetwob,[-61,60])
Dy = diff(y);
D2y = diff(y,2);

dsolve('D2y=3*y-2*Dy','y(0)=(exp(1))^3','Dy(0)=-60.256615257431648')

% Problem 7.2.2

%  a.)

nlbvpfd2a([0 3/2],[-1 3],9);
z=[0.5184,0.0240,0.4710,0.9543,1.4142,1.8393,...
       2.2190,2.5442,2.8066,3];
w=[-0.7325,-0.4337,-0.0986,0.2768,0.6920,1.1437,...
       1.6201,2.1053,2.5744];

for i=1:9
   h(i)=0;
   err(i)=0;
end

for i=1:9
   h(i)=h(i)+0.15*i;
   err(i)=err(i)+abs(z(i)-w(i));
end

semilogy(h,err); 
grid on

figure

nlbvpfd2a([0 3/2],[-1 3],19);
nlbvpfd2a([0 3/2],[-1 3],39);

% b.)

z=[14.8797,11.0232,8.1662,6.0496,...
   4.4817,3.3201,2.4596,1.8221,1.3499,1];
w=[14.8721,11.0121,8.1543,6.0385,4.472,...
   3.3124,2.4539,1.8184,1.3481];

for i=1:9
   h(i)=0;
   err(i)=0;
end

for i=1:9
   h(i)=h(i)+i*0.15;
   err(i)=err(i)+abs(z(i)-w(i));
end

nlbvpfd2b([0 1],[exp(3) 1],9);
semilogy(h,err); 

grid on
figure

nlbvpfd2b([0 3/2],[-1 3],19);
nlbvpfd2b([0 3/2],[-1 3],39);

% Problem 7.2.6

nlbvpfd([1 2],[2 1],15);
hold on
figure
nlbvpfderror %error plot

% Problem 7.3.2

f = @(x) sin(pi*x);
g = @(x) cos(pi*x);
l=@(t) 0*t;
r=@(t) 0*t;

% a.)

forward_difference(0,1,0,1,10,100,l,r,f);
forward_difference(0,1,0,1,10,180,l,r,f);

% b.)

forward_difference(0,1,0,1,10,100,l,r,g);
forward_difference(0,1,0,1,10,200,l,r,g);

% Problem 7.3.4

% a.)

hold on
figure
nlbvpfd2([0 3/2],[-1 3],9);

hold on
figure
z = [0.5184,0.0240,0.4710,0.9543,1.4142,1.8393,2.2190,2.5442,2.8066,3];
w = [-0.7325,-0.4337,-0.0986,0.2768,0.6920,1.1437,1.6201,2.1053,2.5744];
for i = 1:9
    h(i) = 0;
    err(i) = 0;
end
for i = 1:9
    h(i) = h(i)+i*0.15;
    err(i) = err(i)+abs(z(i)-w(i));
end
semilogy(h,err);
grid on

hold on
figure
nlbvpfd2([0 3/2],[-1 3],19);

hold on
figure
nlbvpfd2([0 3/2],[-1 3],39);

% b.)

hold on
figure
nlbvpfd22([0 1],[exp(3) 1],9);

z = [14.8797,11.0232,8.1662,6.0496,4.4817,3.3201,2.4596,1.8221,1.3499,1];
w = [14.8721,11.0121,8.1543,6.0385,4.4720,3.3124,2.4539,1.8184,1.3481];
for i = 1:9
    h(i) = 0;
    err(i) = 0;
end
for i = 1:9
    h(i) = h(i)+i*0.15;
    err(i) = err(i)+abs(z(i)-w(i));
end
semilogy(h,err);
grid on

hold on
figure
nlbvpfd22([0 1],[exp(3) 1],19);

hold on
figure
nlbvpfd22([0 1],[exp(3) 1],39);

% Problem 8.1.2

f = @(x) sin(pi*x);
g = @(x) cos(pi*x);
l=@(t) 0*t;
r=@(t) 0*t;

% a.)

forward_difference(0,1,0,1,10,100,l,r,f);
forward_difference(0,1,0,1,10,180,l,r,f);

% b.)

forward_difference(0,1,0,1,10,100,l,r,g);
forward_difference(0,1,0,1,10,200,l,r,g);

% Problem 8.1.4

% a.)

hold on
figure
heatfda(0,1,0,1,10,50);
h = [.02; .02; .02];
k = [.02; .01; .005];
exact = [.03496; .03496; .03496];
approx = [.03; .0331; .034];
error = [.0496; .0166; .0156];
table(h,k,exact,approx,error)

% b.)

hold on
figure
heatfdb(0,1,0,1,50,50);
h = [.02; .02; .02];
k = [.02; .01; .005];
exact = [.0254; .0254; .0254];
approx = [.02; .021; .021];
error = [.0054; .044; .044];
table(h,k,exact,approx,error)

% Problem 8.1.6

% a.)

hold on
figure
cranka(0,1,0,1,10,10);

hold on
figure
cranka(0,1,0,1,20,20);

hold on
figure
cranka(0,1,0,1,40,40);

h = [.1; .05; .0025];
k = [.1; .05; .0025];
exact = [.349607; .349607; .349607];
approx = [.3090; .3090; .3090];
error = [.0406; .0406; .0406];
table(h,k,exact,approx,error)

% b.)

hold on
figure
crankb(0,1,0,1,10,10);

hold on
figure
crankb(0,1,0,1,20,20);

hold on
figure
crankb(0,1,0,1,40,40);

h = [.1; .05; .0025];
k = [.1; .05; .0025];
exact = [.025401; .025401; .025401];
approx = [.02; .024; .024];
error = [.005401; .001401; .001401];
table(h,k,exact,approx,error)