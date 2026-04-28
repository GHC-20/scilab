// Q1c: d^2y/dt^2 + 2*dy/dt = -y
// Let Y(1)=y, Y(2)=dy/dt
function Ydot = f(t, Y)
    Ydot(1) = Y(2)
    Ydot(2) = -Y(1) - 2*Y(2)
endfunction

t0 = 0; Y0 = [1; 0];
t = 0:0.1:10;
Y = ode(Y0, t0, t, f);

plot(t, Y(1,:), 'r-');
xlabel('t'); ylabel('y(t)');
title('d²y/dt² + 2*dy/dt + y = 0');
xgrid();
