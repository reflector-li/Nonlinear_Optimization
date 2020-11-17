%不能进行函数变形，就用原函数，则用jacobi_2
function J = jacobi(y,t,x)
for i = 1:5
    J(i,1) = t(i,1)*y(i)-x(3)*t(i,1);
    J(i,2) = t(i,2)*y(i);
    J(i,3) = -x(1)*t(i,1);
end
end