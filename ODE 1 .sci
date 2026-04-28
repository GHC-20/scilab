// Q1a: Solve dy/dx = e^(-x), y(0)=0 using ode()
function ydot = f(x, y)
    ydot = exp(-x)
endfunction

x0 = 0; y0 = 0;
x = 0:0.1:5;
y = ode(y0, x0, x, f);
y_exact = 1 - exp(-x);

plot(x, y, 'r-', x, y_exact, 'b--');
legend('Numerical', 'Exact: 1-e^(-x)');
xlabel('x'); ylabel('y');
title('dy/dx = e^(-x), y(0)=0');
