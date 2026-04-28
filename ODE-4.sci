// Q1d: d^2y/dt^2 + e^(-t)*dy/dt = -y
function Ydot = f(t, Y)
    Ydot(1) = Y(2)
    Ydot(2) = -Y(1) - exp(-t)*Y(2)
endfunction

t0 = 0; Y0 = [1; 0];
t = 0:0.1:15;
Y = ode(Y0, t0, t, f);

plot(t, Y(1,:), 'b-', t, Y(2,:), 'r--');
legend('y(t)', "y'(t)");
xlabel('t'); ylabel('y');
title('d²y/dt² + e^(-t)*dy/dt + y = 0');
xgrid();
