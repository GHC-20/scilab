// Q7a: sin(theta) evaluation
theta_deg = 0:10:360;
theta_rad = theta_deg * %pi / 180;
s = sin(theta_rad);
plot(theta_deg, s, 'b-');
xlabel('θ (degrees)'); ylabel('sin(θ)');
title('sin(θ) vs θ'); xgrid();

// Q7b: Bessel J0 interpolation at intermediate point
xb = 0:1:10;
yb = besselj(0, xb);
xi = 3.5;  // find J0(3.5)
yi = interpln([xb; yb], xi);
disp('J0(3.5) by interpolation: ' + string(yi));
disp('J0(3.5) exact: ' + string(besselj(0, xi)));

// Q7c: Numerical integral of 1/(x²+2)
x_int = -100:0.001:100;
f_int = 1 ./ (x_int.^2 + 2);
I_num = inttrap(x_int, f_int);
I_exact = %pi / sqrt(2);
disp('Numerical integral = ' + string(I_num));
disp('Exact (π/√2) = ' + string(I_exact));
