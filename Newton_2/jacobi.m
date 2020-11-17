function J = jacobi(y,t,x)
J(1) =0;
J(2) = 0;
J(3) = 0;
for i = 1:5
    temp(1) =2*( y(i)+x(1)*t(i,1)*y(i)+x(2)*t(i,2)*y(i)-x(1)*x(3)*t(i,1))*( t(i,1)*y(i)-x(3)*t(i,1));
    temp(2)  = 2*( y(i)+x(1)*t(i,1)*y(i)+x(2)*t(i,2)*y(i)-x(1)*x(3)*t(i,1))*(t(i,2)*y(i));
    temp(3) = 2*( y(i)+x(1)*t(i,1)*y(i)+x(2)*t(i,2)*y(i)-x(1)*x(3)*t(i,1))*(-x(1)*t(i,1));
    J(1)=temp(1)+J(1);
    J(2)=temp(2)+J(2);
    J(3)=temp(3)+J(3);
end
end
