%% Visualización del perfil de velocidades
% Proyecto diseño mecatrónico 
% Author: Andrés Morales 

clear; clc; close all; 

Ts = 0.01; 

t_lav = 10:Ts:20; % [min]
t_cent = 40:Ts:80; % [min]

t_trans_lav = 1;  % [min]
t_trans_cent = 10;  % [min]

Vlav  = 50; % [rpm]
Vcent = 1400; % [rpm]

% 
lavado_profile = trap_profile(Vlav, t_lav, t_trans_lav); 
centr_profile =  trap_profile(Vcent, t_cent, t_trans_cent); 


hfig = figure; 
hfig.Name = "profile-test"; 
plot(t_cent, centr_profile, 'b'); 
grid on; 
xlabel("Time [min]")
ylabel("$\omega$ [rpm]")
hold off; 

% Funcion de rampa 
function [x] = trap_profile(Vmax, t, t_trans)
% Funcion de perfil trapezoidal
% - Devuelve un perfil trapeozida con tiempos subida/bajada equivalentes 
% 
    a = Vmax / t_trans; % Aceleracion 
    Tini = t(1);
    Tfinal = t(end); 

    x = a * (rampf(t - Tini) - rampf(t - t_trans - Tini) - rampf(t - (Tfinal - t_trans))); 
end 


