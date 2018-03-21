clear
clc
close all

x = -1:0.01:1;
y = sqrt(1-x.^2);
fig = figure;
set(fig,'color','white')
plot(x,y,'LineWidth',2)
grid on
xlabel('x')
ylabel('y')

syms x
f = sqrt(1-x.^2);
t = taylor(f, 'Order', 6);

hold on;
ezplot(t, [-1,1])