function [Lambda] = Lambda(h)
%Lambda 
%   Lambda used in problem 3
a = 50e-9;
Lambda =  (6 .* (h ./ a).^2 + 13 .* (h ./ a) + 2) ./ (6 .* (h ./ a).^2 + 4 .* (h ./ a));
end