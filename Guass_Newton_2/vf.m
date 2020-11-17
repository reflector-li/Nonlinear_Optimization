%不能进行函数变形，因此不用这个函数，用vf_2
function  F= vf( y,t,x )
for i=1:5
    F(i) = y(i)+x(1)*t(i,1)*y(i)+x(2)*t(i,2)*y(i)-x(1)*x(3)*t(i,1);
end
end


