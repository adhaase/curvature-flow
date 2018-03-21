clear all;
 
t = cputime;
 
% This file provides intializations and runs the program
M = 128;
N = 1600;
t0 = 0;
tf = 4;
h = (2*pi)/M;
a = 0:h:((2*pi)-h); a = a';
 
% x_1 for initial x_0 = (4+cos(3*a))*cos(a)
x1_0 = (4+cos(3*a)).*cos(a);
% x_2 for initial x_0 = (4+cos(3*a))*sin(a)
x2_0 = (4+cos(3*a)).*sin(a);
 
[x1, x2] = euler1(x1_0, x2_0, N, t0, tf);
%plot(x1(:,1),x2(:,1)); axis equal; % original shape
%plot(x1(:,26),x2(:,26)); axis equal; % t = 1
%plot(x1(:,51),x2(:,51)); axis equal; % t = 2
%plot(x1(:,76),x2(:,76)); axis equal; % t = 3
plot(x1(:,end),x2(:,end)); axis equal; % t = 4 (END RESULT)
 
e = cputime - t;
