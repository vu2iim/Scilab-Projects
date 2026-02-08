clear;clc;clf;

///////////////////////////////////////////////////////////////////
// B-TECH Chemistry Lab Work Record
///////////////////////////////////////////////////////////////////

// Plotting Graph finding the Equivalence point in Potentiometry

// pKa is the negative logarithm of the acid dissociation
// constant (Ka), a measure of how strongly an acid
// donates a proton in water. A lower pKa value indicates
// a stronger acid that readily donates protons, while a higher pKa
// means a weaker acid that holds onto its proton more tightly,
// making it useful for understanding acid strength

// Generate a set of numbers from 0.0 to 6.0 with step size as 0.5
// Number of values = 13
x = 0.0:0.5:6.0

// Number of values = 13
y = [0.84;0.92;1.09;1.17;1.35;1.97;10.30;11.48;11.70;11.84;11.90;11.98;12.01]

// Plot 2D graph of x,y
plot(x,y)

// Incorporate axes labels
xlabel('Volume of NaOH added (mL')
ylabel('pH')
