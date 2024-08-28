clear all; clc; close all
alpha = deg2rad(1.5);
theta = deg2rad(120);

%% beta = 135;
%d = 1852*tan(alpha);
% d = 3342.021909*tan(alpha);
d = 3345.48*tan(alpha);
D1 = 110+d;

disp(D1);

l1 = D1*sin(theta/2)/sin(pi/2-theta/2-alpha);
l2 = D1*sin(theta/2)/sin(pi/2-theta/2+alpha);
W = l1+l2;
disp('海水深度:');
disp(D1);
disp('覆盖宽度:');
disp(W);



%%  beta = 0


%%  beta = 45 && 315





%% 90度方向(横着)
%d = 0:392.868527627245:2870.079693390715;
%D2 = 120+d*tan(alpha);
%l11 = 
%%  beta = 90

%d = -800:200:800;

%D1 = 120;
%D2 = 70+(-d)*tan(alpha);

%l11 = abs(D1*sin(theta/2)/cos(alpha+(theta/2)));
%l12 = abs(D1*sin(theta/2)/(-cos(alpha-(theta/2))));

%l21 = abs(D2*sin(theta/2)/cos(alpha+(theta/2)));
%l22 = abs(D2*sin(theta/2)/(-cos(alpha-(theta/2))));
%%W2 = l21+l22;

%x = abs(d)/cos(alpha);

%eta = abs((l11+l22-x)/W);
%disp('测距与中心距离:');
%disp(d);
%disp('海水深度:');
%disp(D2);
%disp('覆盖宽度:');
%disp(W2);
%disp('重叠率:');
%disp(eta);

