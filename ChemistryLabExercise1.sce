clear;clc;clf;

///////////////////////////////////////////////////////////////////
// B-TECH Chemistry Lab Work Record
///////////////////////////////////////////////////////////////////
// Plotting Graph of 'pH value' versus 'Volume of NaOH added in mL'

// Generate a set of numbers from 0.0 to 6.0 with step size as 0.5
// Number of values = 13
x = 0.0:0.5:6.0

// Transpose x (Convert from row vector to column vector)
x = x'
 
// Generate a set of numbers from 0.0 to 6.0 with step size as 0.5
// Number of values = 13
y = [0.84;0.92;1.09;1.17;1.35;1.97;10.30;11.48;11.70;11.84;11.90;11.98;12.01]

disp(string(x))
disp(string(y))

N = length(x)
disp('Number of items in x: ' + string(N))

// Plot 2D graph of x,y
plot(x,y)
title('pH- metric titration of a weak acid against NaOH')

// Incorporate axes labels
xlabel('Volume of NaOH added (mL)')
ylabel('pH')

// Create a grid
xgrid(1,1,9)

xstring(4,2,["Scale 1:1"])
xstring(4,1,["Name: Nisha R"])
xstring(4,0,["SRN: PES1UG25AM244"])

// Start a new Window
scf

// Find the first derivative
dydx = diff(y(:))./diff(x(:))
disp('Contents of dydx: ', dydx)

// Add one more element to dydx
dydx(N) = dydx(N-1)
disp('Contents of dydx: ', dydx)

x1 = x + 0.5

xlabel('Volume of NaOH added (inml)')
ylabel('$\frac{$\Delta$pH}{$\Delta$v}$')

// Create a grid
xgrid(1,1,9)

plot(x1, dydx)
//xstring(5, 5, '[Point x, Point y]')

scf

// Find the second derivative
d2ydx2 = diff(dydx(:))./diff(x(:))
disp('Contents of d2ydx2: ', d2ydx2)

// Add one more element to d2ydx2
d2ydx2(N) = d2ydx2(N-1)
disp('Contents of d2ydx2: ', d2ydx2)

x2 = x1 + 0.5/2

xlabel('Volume of NaOH added (inml)')
ylabel('$\frac{$\Delta^{2}$pH}{$\Delta^{2}$v}$')

// Create a grid
xgrid(1,1,9)

plot(x2, d2ydx2)

