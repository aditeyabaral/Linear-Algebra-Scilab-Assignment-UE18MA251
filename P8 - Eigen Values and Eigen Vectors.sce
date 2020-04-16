clc;clear;
A = [2 2 1;1 3 1;1 2 2];
disp(A,"The given matrix A is: ")
lam = poly(0,"lam");
charMat = A-lam*eye(3,3);
disp(charMat,"The Characteristic Matrix is: ");
charPoly = poly(A,"lam");
disp(charPoly,"The Characteristic Polynomial is:");
lam = spec(A);
disp(lam,"Eigen  Values: ");
function[x,lam] = eigenvectors(A)
    [n,m] = size(A);
    lam = spec(A)';
    x = [];
    for k=1:3
        B = A-lam(k)*eye(3,3);
        C = B(1:n-1,1:n-1);
        b = -B(1:n-1,n);
        y = C\b;
        y = [y;1];
        y = y/norm(y);
        x = [x y];
    end
endfunction
[x,lam] = eigenvectors(A);
disp(x,"Eigen Vectors of A: ");
