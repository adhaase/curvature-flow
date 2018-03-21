function [ x1_dot, x2_dot ] = x_dot(x1, x2)
 
% Compute x_1a, x_1aa, x_2a, x_2aa
% x1 for initial x_0 is (4+cos(3*a))*cos(a)
% x2 for initial x_0 is (4+cos(3*a))*sin(a)
 
%---------------------------------------------------------------
 
%x_1 = [x1;x1(1)];
%x_2 = [x2;x2(1)];
 
% compute derivatives
 
% x_1a = dx1/da
x_1a = central_diff(x1);
 
% x_1aa
x_1aa = central_diff(x_1a);
 
% x_2a = dx2/da
x_2a = central_diff(x2);
 
% x_2aa
x_2aa = central_diff(x_2a);
 
%---------------------------------------------------------------
 
% |x_a| = sqrt((x_1a)^2 + (x_2a)^2)
x_a = sqrt((x_1a).^2 + (x_2a).^2);
 
% n
%n = [x_2a./x_a; -x_1a./x_a];
 
%---------------------------------------------------------------
 
% compute equation for curvature flow: x_dot
 
x1_dot = (((x_2a .* x_1aa)-(x_1a .* x_2aa))./(x_a.^3)).* (x_2a./x_a);
x2_dot = (((x_2a .* x_1aa)-(x_1a .* x_2aa))./(x_a.^3)).* (-x_1a./x_a);
 
%---------------------------------------------------------------
end
