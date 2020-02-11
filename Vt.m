function [Vt] = Vt(Va,Vel)
%Vt function to calculate Vt
%   the total energy between NPs
%   unit: KbT
Vt = (Va + Vel) / 4.11e-21;
end

