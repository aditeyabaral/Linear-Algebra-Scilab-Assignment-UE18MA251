clc;clear;
A = [1 -3 2;4 4 -1;6 3 5];
disp(A,"The given matrix A is: ");
u0 = [1 0 0]';
disp(u0,"The initial vector is: ");
v = A*u0;
a = max(u0);
disp(a,"The first approximation is: ");
while abs(max(v)-a)>0.002
    disp(v,"The current eigen vector is:");
    a = max(v);
    disp(a,"The current eigen value is: ");
    u0 = v/max(v);
    v = A*u0;
end
format("v",4);
disp(max(v),"The largest Eigen Value is: ");
format("v",5);
disp(u0,"The corresponding Eigen Vector is: ");
