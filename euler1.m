function [x1, x2] = euler1(x1_0, x2_0, N, t0, tf)

% function arguments:
% func = function name
% N = number of time steps
% M = number of spatial discretization points
% t0 = initial time (t0 = 0)
% tf = final time (tf = 4)

h = (tf -t0)/N; % define time step size, N = 100
t=t0:h:tf; % time interval - 0:4

x1 = zeros(length(x1_0), length(t)); 
x2 = zeros(length(x2_0), length(t));
x1(:,1) = x1_0;
x2(:,1) = x2_0;

% loop using euler's method
for i = 1:N
    [ x1_dot, x2_dot ] = x_dot(x1(:, i), x2(:, i));
    x1(:, i+1) = x1(:, i) + h*x1_dot;
    x2(:, i+1) = x2(:, i) + h*x2_dot;
end

end