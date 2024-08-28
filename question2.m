clear all; clc; close all
alpha = deg2rad(1.5);
theta = deg2rad(120);

for beta = 0:45:315
    if beta ==0 || beta ==180
        d = 0:555.6:3889.2;
        if beta==0
            disp('beta = 0度为:');
            D2 = 120+d*tan(alpha);
        else
            disp('beta = 180度为:');
            D2 = 120-d*tan(alpha);
        end
        l1 = D2/tan(deg2rad(60));
        W = 2*l1;

        
        disp('海水深度:');
        disp(D2);
        disp('覆盖宽度:');
        disp(W);
    elseif beta==45 || beta ==315 

        d = 0:392.868527627245:2870.079693390715;
        D2 = 120+d*tan(alpha);
        l1 = D2*sin(theta/2)/sin(pi/2+alpha/2);
        l2 = D2*sin(theta/2)/sin(pi/2-theta/2+alpha/2);
        W = l1+l2;
        if beta ==45 
            disp('beta = 45度为:');
        else
            disp('beta = 315度为:');
        end
        
        disp('海水深度:');
        disp(D2);
        disp('覆盖宽度:');
        disp(W);
    elseif beta==90 ||beta ==270
        d = 0:555.6:3889.2;
        D2 = 120;
        l1 = D2*sin(theta/2)/sin(pi/2-theta/2-alpha/2);
        l2 = D2*sin(theta/2)/sin(pi/2-theta/2+alpha/2);
        W = l1+l2;
        if beta ==90 
            disp('beta = 90度为:');
        else
            disp('beta = 270度为:');
        end
        
        disp('海水深度:');
        disp(D2);
        disp('覆盖宽度:');
        disp(W);
    elseif beta ==135 || beta ==225
        d = 0:392.868527627245:2870.079693390715;
        D2 = 120-d*tan(alpha);
        l1 = D2*sin(theta/2)/sin(pi/2+alpha/2);
        l2 = D2*sin(theta/2)/sin(pi/2-theta/2+alpha/2);
        W = l1+l2;
        if beta ==135
            disp('beta = 135度为:');
        else
            disp('beta = 225度为:');
        end
        
        disp('海水深度:');
        disp(D2);
        disp('覆盖宽度:');
        disp(W);
    end
end
