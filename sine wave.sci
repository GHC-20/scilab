//N= 100;
//theta= linspace(0,2*%pi, N);
//y= sin(theta);
//plot(theta, y, 'b-', 'linewidth', 2);
//xgrid;
//xtitle('evaluation of sin(theta)', 'sin(theta)')

//x= 0:0.3:10;
//J= besselj(0,x);
//xi= 4.25;
//yi= interp1(x,J,xi, 'linear');
//disp('interpolated value of bessel function function at x= 4.25');
//disp(yi);
//plot(x,J,'o');
//plot(xi,yi,'r-');
//xgrid();


deff('y=f(x)', 'y = 1/(x^2 + 2)');

a = 0;
b = 2;
n = 10;                 // number of intervals
h = (b - a)/n;

sum = f(a) + f(b);

for i = 1:n-1
    xi = a + i*h;
    sum = sum + 2*f(xi);
end

I_trap = (h/2)*sum;
disp(I_trap, "Trapezoidal value");

I_exact = intg(a, b, f);
disp(I_exact, "Exact value");
