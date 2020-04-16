clc;clear;
A = [2,5,1;4,8,1;0,1,-1], b = [0;2;3];
disp("Matrix before Gaussian Elimination: ")
disp(A);
Ab = [A b];
a = Ab;
n = 3;
for i = 2:n
    for j=2:n+1
        a(i,j) = a(i,j) - a(1,j)*a(i,1)/a(1,1);
    end
    a(i,1) = 0;
end
for i=3:n
    for j=3:n+1
        a(i,j) = a(i,j)-a(2,j)*a(i,2)/a(2,2);
    end
    a(i,2) = 0;
end

x(n) = a(n,n+1)/a(n,n);
for i=n-1:-1:1
    sumk = 0;
    for k=i+1:n
        sumk = sumk+a(i,k)*x(k);
    end
    x(i) = (a(i,n+1) - sumk)/a(i,i);
end

disp("Values of x,y,z:")
disp(x);
disp("Matrix after Gaussian Elimination: ")
disp(a);
disp("The pivots are: ");
disp(a(3,3),a(2,2),a(1,1));
