x0 = 4;
y0 = 6;

angle = 40
initSpeed = 5;

g = 9.81;

for t = 0:10
     x(t) = x0 * 2 * initSpeed * cosd(angle);
    y(t) = y0 + 2*initSpeed*sind(angle)-0.5*g*t^2;
    plot(x(t),y(t))
end