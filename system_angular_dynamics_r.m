function [R] = system_angular_dynamics_r(R, omega, ts)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
k1 = angular_dynamics_r(R, omega);
k2 = angular_dynamics_r(R + ts/2*k1, omega);
k3 = angular_dynamics_r(R + ts/2*k2, omega);
k4 = angular_dynamics_r(R + ts*k3, omega); % new

R = R +ts/6*(k1 +2*k2 +2*k3 +k4); % new
end