clc;
clear;

// Define square wave function
function y = f(x)
    y = ones(x);
    for i = 1:length(x)
        if x(i) < 0 then
            y(i) = -1;
        else
            y(i) = 1;
        end
    end
endfunction

// Domain
x = linspace(-%pi, %pi, 1000);
y = f(x);

// Number of Fourier terms
terms = 10;

// Initialize Fourier series
fourier = zeros(x);

// Compute Fourier series (only bn terms matter)
for n = 1:terms
    bn = (4/(%pi*n));  // theoretical value for square wave
    
    if modulo(n,2) == 1 then  // only odd terms
        fourier = fourier + bn * sin(n*x);
    end
end

// Plotting
clf();
plot(x, y, 'r', x, fourier, 'b--');

// Labels
xlabel("x");
ylabel("f(x)");
title("Square Wave vs Fourier Series Approximation");

// Legend
legend(["Original Square Wave", "Fourier Approximation"]);
