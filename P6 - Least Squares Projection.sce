clc;clear;
A = [1 0;0 1;1 1];
b = [1;1;0];
disp("The given matrix A is:")
disp(A);
disp(b, "b: ");
x = (A'*A)\(A'*b)
C = x(1,1);
D = x(2,1);
disp(C,"C: ");
disp(D,"D: ");
disp("The best fit line is b = C+Dt")
