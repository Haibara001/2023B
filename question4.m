clear,clc;

filename = '附件.xlsx';
data = xlsread(filename);

X = data(1, 2:end); % 横向坐标（从西到东）
Y = data(2:end, 1); % 纵向坐标（从南到北）
Z = data(2:end, 2:end); % 海水深度

Z = -Z;

[X_mesh, Y_mesh] = meshgrid(X, Y);

figure;
surf(X_mesh, Y_mesh, Z);
shading interp;
colorbar;
xlabel('横向坐标/NM（由西向东）');
ylabel('纵向坐标/NM（由南到北）');
zlabel('海水深度/m');
title('海底地形3D图');

view(3);

Z = -Z;
figure;
contourf(X_mesh, Y_mesh, Z, 100); % 20条等高线
colorbar;
xlabel('横向坐标/NM（由西向东）');
ylabel('纵向坐标/NM（由南到北）');
zlabel('海水深度/m');
title('海底地形等高线图');

view(2);


