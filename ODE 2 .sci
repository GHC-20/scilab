// Q1b: Solve dy/dx + e^(-x)*y = x^2
function ydot = f(x, y)
    ydot = x^2 - exp(-x)*y
endfunction

x0 = 0; y0 = 0;
x = 0:0.1:5;
y = ode(y0, x0, x, f);

plot(x, y, 'b-');
xlabel('x'); ylabel('y');
title('dy/dx + e^(-x)*y = x^2');
xgrid();
