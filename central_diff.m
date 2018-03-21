function [ res ] = central_diff( in )
% Computes the derivatives using central difference approximation

% res = (in(2+in)-f(2-in))./(2*h);
M = size(in,1);
 h = (2*pi)/M;
in = [in(end);in;in(1)];
for i = 1: M
    res(i,1)=(in(i+2)-in(i))/2/h;
end
end