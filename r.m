function [r] = r(W,t)
%r 
%   detail
r =  50E-9 .* (1 + 4 * 4.11E-21 .* 2.35E15 .* t ./ (3 .* 8.9E-4 .* W)).^0.5; 
end

