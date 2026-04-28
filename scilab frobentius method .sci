clc;
clear;

// Define x range
x = linspace(-1, 1, 200);

// Function to compute Legendre polynomial using series (Frobenius)
function P = legendre_frobenius(n, x)
    P = zeros(x);
    
    for k = 0:floor(n/2)
        coeff = ((-1)^k * factorial(2*n - 2*k)) / ...
                (2^n * factorial(k) * factorial(n-k) * factorial(n-2*k));
        P = P + coeff * x.^(n - 2*k);
    end
endfunction

// Choose degrees
n_values = [0, 1, 2, 3, 4];

// Plot
clf;
for i = 1:length(n_values)
    n = n_values(i);
    Pn = legendre_frobenius(n, x);
    plot(x, Pn);
    legend_str(i) = "P_" + string(n);
end

legend(legend_str);
xlabel("x");
ylabel("P_n(x)");
title("Legendre Polynomials using Frobenius Method");
