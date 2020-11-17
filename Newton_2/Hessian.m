function H= Hessian(y,t,x)
H = zeros(3,3);
temp = zeros(3,3);
for i = 1:5
    temp(1,1) = 2*( t(i,1)*y(i)-x(3)*t(i,1))^2;
    temp(1,2) = 2*( t(i,1)*y(i)-x(3)*t(i,1))*(t(i,2)*y(i));
    temp(1,3) = 2*( t(i,1)*y(i)-x(3)*t(i,1))*(-x(1)*t(i,1))-2*t(i,1)*( y(i)+x(1)*t(i,1)*y(i)+x(2)*t(i,2)*y(i)-x(1)*x(3)*t(i,1));
    temp(2,2) = 2*(t(i,2)*y(i))^2;
    temp(2,3) = 2*(t(i,2)*y(i))*(-x(1)*t(i,1));
    temp(3,3) = 2*(-x(1)*t(i,1))^2;
    H = H+temp;
end
H = triu(H)+tril(H',-1);
end