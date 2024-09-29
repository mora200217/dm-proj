% Main configuration script
p    = 4;        % Number of pole pairs
Rs   = 0.1;      % Stator resistance per phase           [Ohm]
Ls   = 1e-4;     % Stator self-inductance per phase, Ls  [H]
Ms   = 1e-5;     % Stator mutual inductance, Ms          [H]
psim = 0.0175;   % Maximum permanent magnet flux linkage [Wb]
Jm   = 0.0005;   % Rotor inertia                         [Kg*m^2]
Ts  = 5e-6;      % Fundamental sample time               [s]
Tsc = 1e-4;      % Sample time for inner control loop    [s]
Vdc = 48;        % Maximum DC link voltage               [V]
Kpw = 0.1;    % Proportional gain for speed controller
Kiw = 15;     % Integrator gain for speed controller
Kpv = 0.1;    % Proportional gain for voltage controller
Kiv = 0.5;    % Integrator gain for voltage controller


addpath('docs/')

% Assets 
addpath('assets/CAD/')
addpath('assets/imgs/')
