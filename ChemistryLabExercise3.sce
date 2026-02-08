clear;clc;clf;

///////////////////////////////////////////////////////////////////
// B-TECH Chemistry Lab Work Record
///////////////////////////////////////////////////////////////////

// To Plot Graph in Colorimetry

i = 2
k = 10.0

x = [i:2.0:k]'
y = [0.05; 0.09; 0.13; 0.23; 0.25]

disp(x)
disp(y)

a = gca();
a.data_bounds = [0 -0.05; 12 0.3];

X = [x ones(x)]
a = X\y

xx = [0.0:0.5:k]'
yy = a(1)*xx + a(2)

// Turn OFF vertical grid, ON horizontal grid
a = gca();
a.grid = [-1 1 -1];

plot(xx, yy)
plot2d(x,y,-1)

xlabel('Volume of copper sulphate added (ml)')
ylabel('OD')

