function [Va] = Va(h)
%the function of Va
%   �˴���ʾ��ϸ˵��
Va = - 5.57e-20 .* 50e-9 ./ (12 .* h .* (1 + 11.12 .* h ./100e-9));
end