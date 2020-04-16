clc;clear;
A = [1 0 0;1 1 1;0 0 1];
n = length(A(1,:));
Aug = [A,eye(n,n)];
//Forward Elimination
for j=1:n-1
    for i=j+1:n
        Aug(i,j:2*n) = Aug(i,j:2*n)-Aug(i,j)/Aug(j,j)*Aug(j,j:2*n);
    end
end
//Backward Elimination
for j = n:-1:2
    Aug(1:j-1,:) = Aug(1:j-1,:)-Aug(1:j-1,j)/Aug(j,j)*Aug(j,:);
end
//Diagonal Normalization
for j=1:n
    Aug(j,:) = Aug(j,:)/Aug(j,j);
end
B = Aug(:,n+1:2*n);
disp("The inverse of A is:");
disp(B);
