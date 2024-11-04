clc;
clear;
warning('off', 'all');
%pkg load symbolic;
%syms fxg1d1(t);
%  fxg1d1(t) = sqrt((2*cos(t)).^2+(0.8*sin(t)).^2).*cos(t);
%  global fx_g1d1=diff(fxg1d1,t,2);
%  fx_g1d1
%  ccode(fx_g1d1)

clc;
clear;
%warning('off', 'all');
%pkg load symbolic;

n = 64;
for ii = 1:2*n
  t(ii) = ((ii-1)*pi)/n;
end

x_cord = 1.15;
y_cord = 0.05;
x = [x_cord y_cord];

x_cord2 = 1.4;
y_cord2 = 0.2;
x2 = [x_cord2 y_cord2];

x_cord3 = 1.65;
y_cord3 = 0.35;
x3 = [x_cord3 y_cord3];

hold on;
PlotGraph(t,x,x2,x3)

A = GenerateA(n,t);
F = GenerateF(n,t);
PSI = linsolve(A,F);

GetResult (PSI(1:(2*n)),PSI((2*n+1):(4*n)),x,t,n,'A');
GetResult (PSI(1:(2*n)),PSI((2*n+1):(4*n)),x2,t,n,'B');
GetResult (PSI(1:(2*n)),PSI((2*n+1):(4*n)),x3,t,n,'C');

%{
for temp=0:0.01:1
  temp
    [x y]=Gamma ([t t(1)],temp);
    for ii = 1:length(x)
        res(ii) = FindU(PSI(1:(2*n)),PSI((2*n+1):(4*n)),[x(ii) y(ii)],t,n);
        ex_res(ii) = ExactSolution(x(ii),y(ii));
    end
    plot3(x,y,abs(res-ex_res))

end
%}

%{
[x y z] = cylinder(2.5:-0.05:0,128);

for ii = 1:length(x(:,1))
  for jj = 1:length(x(1,:))
     res(ii,jj) = FindU(PSI(1:(2*n)),PSI((2*n+1):(4*n)),[x(ii,jj) y(ii,jj)],t,n);
     ex_res(ii,jj) = ExactSolution(x(ii,jj),y(ii,jj));
  end
end
surf(x,y,ex_res-res);

%hold on;

%surf(x_,y_,ex_res)

%{
  syms fxg1d1(t);
  fxg1d1(t) = sqrt((2*cos(t)).^2+(0.8*sin(t)).^2).*cos(t);
  global fx_g1d1=diff(fxg1d1,t);

  syms fyg1d1(t);
  fyg1d1(t) = sqrt((2*cos(t)).^2+(0.8*sin(t)).^2).*sin(t);
  global fy_g1d1=diff(fyg1d1,t);

  syms fxg1d2(t);
  fxg1d2(t) = sqrt((2*cos(t)).^2+(0.8*sin(t)).^2).*cos(t);
  global fx_g1d2=diff(fxg1d2,t,2);

  syms fyg1d2(t);
  fyg1d2(t) = sqrt((2*cos(t)).^2+(0.8*sin(t)).^2).*sin(t);
  global fy_g1d2=diff(fyg1d2,t,2);

  syms fxg2d1(t);
  fxg2d1(t) = sqrt((1*cos(t)).^2+(0.4*sin(t)).^2).*cos(t);
  global fx_g2d1=diff(fxg2d1,t);

  syms fyg2d1(t);
  fyg2d1(t) = sqrt((1*cos(t)).^2+(0.4*sin(t)).^2).*sin(t);
  global fy_g2d1=diff(fyg2d1,t);

  syms fxg2d2(t);
  fxg2d2(t) = sqrt((1*cos(t)).^2+(0.4*sin(t)).^2).*cos(t);
  global fx_g2d2=diff(fxg2d2,t,2);

  syms fyg2d2(t);
  fyg2d2(t) = sqrt((1*cos(t)).^2+(0.4*sin(t)).^2).*sin(t);
  global fy_g2d2=diff(fyg2d2,t,2);

  fx_g2d1
  ccode(fx_g2d1)
  fy_g2d1
  ccode(fy_g2d1)
  fx_g2d2
  ccode(fx_g2d2)
  fy_g2d2
  ccode(fy_g2d2)
%}

%{
4
Our res in A : 2.29013, exact res : 1.32, error : 0.970128
Our res in B : 4.14589, exact res : 1.92, error : 2.22589
Our res in C : 6.52774, exact res : 2.6, error : 3.92774

8
Our res in A : 1.32015, exact res : 1.32, error : 0.00015288
Our res in B : 1.91489, exact res : 1.92, error : 0.00510939
Our res in C : 2.50257, exact res : 2.6, error : 0.0974284

16
Our res in A : 1.31998, exact res : 1.32, error : 2.24252e-05
Our res in B : 1.92039, exact res : 1.92, error : 0.000393445
Our res in C : 2.61554, exact res : 2.6, error : 0.0155429

32
Our res in A : 1.32, exact res : 1.32, error : 1.15919e-10
Our res in B : 1.92, exact res : 1.92, error : 2.03383e-07
Our res in C : 2.59993, exact res : 2.6, error : 6.95393e-05

64
Our res in A : 1.32, exact res : 1.32, error : 6.66134e-16
Our res in B : 1.92, exact res : 1.92, error : 3.10862e-15
Our res in C : 2.6, exact res : 2.6, error : 1.47692e-08
%}

