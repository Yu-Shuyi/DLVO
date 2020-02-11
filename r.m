function [r] = r(W,t)
%r Radius of NPs
%   Used in problem 4
r =  50e-9 .* (1 + 4 * 4.11e-21 .* 2.35e15 .* t ./ (3 .* 8.9e-4 .* W)).^0.5; 
end

