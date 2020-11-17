function J = jacobi_2(y,t,x)
for i = 1:5
    J(i,1) = -x(3)*t(i,1)*(1+x(1)*t(i,1)+x(2)*t(i,2)-t(i,1)^2)/(1+x(1)*t(i,1)+x(2)*t(i,2))^2;
    J(i,2) =x(1)*x(3)*t(i,1)*t(i,2)/(1+x(1)*t(i,1)+x(2)*t(i,2))^2;
    J(i,3) = -x(1)*t(i,1)/(1+x(1)*t(i,1)+x(2)*t(i,2));
end
end