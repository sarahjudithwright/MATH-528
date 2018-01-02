y0 = [pi/2;pi/2;1;0];
%goes all the way around with sufficient initial angular velocity. 10
%definitely works
t0 = 0;
h = 0.01;
T = 20;

[t, y] = RK4(@RHS, y0, t0, h, T);

L1 = 1;
L2 = 1;
x1 = 0;
y1 = 0;
x2 = zeros(1,length(t));
y2 = zeros(1,length(t));


for i = 1:length(t)
    u1 = -L1*cos(y(1,i));
    v1 = L1*sin(y(1,i));
    u2 = -L2*cos(y(2,i));
    v2 = L2*sin(y(2,i));
    x2(i) = v1 + v2;
    y2(i) = u1 + u2;
    
    quiver(0,0,v1,u1);
    hold on
    quiver(v1,u1,v2,u2);
    plot(x2(1:i),y2(1:i),'b*')
    hold off 
    axis([-3,3,-3,3])
    pause(0.001);
end


