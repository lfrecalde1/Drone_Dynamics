function [R_p] = angular_dynamics_r(R,omega)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
S_omega = skew_symmetric_matrix(omega);
R_p = R*S_omega;
end

