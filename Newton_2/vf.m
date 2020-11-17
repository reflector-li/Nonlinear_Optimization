function  F= vf( y,t,x )
F =  0;
for i=1:5
    temp = y(i)+x(1)*t(i,1)*y(i)+x(2)*t(i,2)*y(i)-x(1)*x(3)*t(i,1);
    F = F+temp^2;
end
end


