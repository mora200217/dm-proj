function [ramp] = rampf(t)
%RAMPF Funcion rampa 
%   Detailed explanation goes here
    ramp = stepf(t) .* t; 
end

