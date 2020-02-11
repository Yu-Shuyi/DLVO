function [Vel] = Vel(h, n, k, y1, y2)
%Vel The function to calculate Vel
%   The electrostatic repulsive energy
Vel = pi .* 1.38e-23 .* 298 .* n .* 6.02e23 .* y1 .* y2 .* (50e-9) .^2 .* exp(-k .* h) ./ (k .^2 .* (2 .* 50e-9 +h));
end

