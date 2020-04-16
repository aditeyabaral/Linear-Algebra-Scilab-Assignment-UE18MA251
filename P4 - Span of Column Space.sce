clc;clear;
a = [2 4 6 4;2 5 7 6;2 3 5 2];
disp("The given matrix is:");
disp(a);
a(2,:) = a(2,:)-(a(2,1)/a(1,1))*a(1,:);
a(3,:) = a(3,:)-(a(3,1)/a(1,1))*a(1,:);
disp(a);
a(3,:) = a(3,:)-(a(3,2)/a(2,2))*a(2,:);
disp(a);
a(1,:) = a(1,:)/a(1,1);
a(2,:) = a(2,:)/a(2,2);
disp(a);
for i=1:3
    for j=i:4
        if(a(i,j)<>0)
            disp("is a pivot column",j,"column");
            break;
        end
    end
end
