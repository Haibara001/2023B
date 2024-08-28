clear all; clc; close all

alpha = deg2rad(1.5);
theta = deg2rad(120);
d = -800:200:800;

D1 = 70;
D2 = 70+(-d)*tan(alpha);

l11 = abs(D1*sin(theta/2)/cos(alpha+(theta/2)));
l12 = abs(D1*sin(theta/2)/(-cos(alpha-(theta/2))));

l21 = abs(D2*sin(theta/2)/cos(alpha+(theta/2)));
l22 = abs(D2*sin(theta/2)/(cos(alpha-(theta/2))));
W = l11+l12;
W2 = l21+l22;

x = abs(200)/cos(alpha);


disp('测距与中心距离:');
disp(d);
disp('海水深度:');
disp(D2);
disp('覆盖宽度:');
disp(W2);
disp('重叠率:');
for i = 1:8
    eta = (l22(i)+l21(i+1)-x)/W2(i+1);
    disp(eta);
end

