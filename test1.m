clear,clc;
alpha = deg2rad(1.5);
theta = deg2rad(120);

d = 3345.48*tan(alpha);
answ = 197.6045;
time = 1;
tmp = 110+d;
h = 358.521877810871;

while(answ>13.0073)
    syms x;
    D1 = tmp;
    l1 = D1*sin(theta/2)/sin(pi/2-theta/2-alpha);
    l2 = D1*sin(theta/2)/sin(pi/2-theta/2+alpha);
    equ = (l2+x*sin(theta/2)/sin(pi/2-theta/2-alpha)-(D1-x)/sin(alpha)==0.1*(x*sin(theta/2)/sin(pi/2-theta/2-alpha)+x*sin(theta/2)/sin(pi/2-theta/2+alpha)));
    answ = solve(equ);
    disp('水深')
    disp(eval(answ));
    tmp = eval(answ);
    h1 = (D1-tmp)/tan(alpha);
    h2 = l2*cos(alpha);
    h = h+h1;
    time = time+1;
    if h+h2>7408
        disp('此时的最大覆盖范围:');
        disp(h+h2);
        disp('次数为:');
        disp(time);
        break;
    end
    disp('平面差');
    disp(h);
end
