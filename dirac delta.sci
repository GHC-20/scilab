// Define the function inside the integral
function y = integrand(x, sigma)
    y = (1/(sqrt(2*%pi)*sigma)) * exp(-((x-2).^2) / (2*sigma^2)) .* (x + 3);
endfunction

// Numerical integration using trapezoidal rule
function I = compute_integral(sigma)
    a = -10;  // lower limit (approx -infinity)
    b = 10;   // upper limit (approx +infinity)
    n = 10000; // number of intervals
    
    x = linspace(a, b, n);
    y = integrand(x, sigma);
    
    h = (b - a) / (n - 1);
    I = h * (sum(y) - 0.5*(y(1) + y($))); // trapezoidal rule
endfunction

// Test for different sigma values
sigmas = [1, 0.1, 0.01];

for i = 1:length(sigmas)
    sigma = sigmas(i);
    result = compute_integral(sigma);
    disp("Sigma = " + string(sigma) + " --> Integral = " + string(result));
end
