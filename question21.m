clear all; clc; close all
alpha = deg2rad(1.5);
theta = deg2rad(120);
for beta = 0:pi/4:7*pi/4
    d = 0:555.6:3889.2;
    D2 = 120+d*tan(alpha)*cos(beta);
    gamma = asin(abs(sin(alpha)*sin(beta))/sqrt((sin(beta)*sin(beta)+cos(alpha)*cos(alpha)*cos(beta)*cos(beta))));
    l1 = D2*sin(theta/2)/sin(pi/2-theta/2-gamma);
    l2 = D2*sin(theta/2)/sin(pi/2-theta/2+gamma);
    W = l1+l2;
    disp('角度为:');
    disp(rad2deg(beta));
    disp('覆盖范围');
    disp(W);
end

