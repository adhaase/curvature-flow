% Compute L(4) using trapezoidal rule with M = 4 and N = 1600. 
% tabulate the errors in computing L(4) with N = 100, 200, 400, 800
% deduce the accuracy of your numerical algorithm

function [res] = trapezoid(in)

res = 0;
a = 0;
b = 2*pi;
N = 800;
h = (b-a)/N; % width of each interval
x = a:h:b;
y = in;
M = 64;

for k = 1:M-1
res = res + 0.5*((x(k+1)-x(k))*(y(k+1)+y(k)));
end
end