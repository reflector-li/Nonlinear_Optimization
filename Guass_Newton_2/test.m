%ԭ��������
function Error= test (t,y,x)
for i=1:5
    Error(i) = y(i)-x(1)*x(3)*t(i,1)/(1+x(1)*t(i,1)+x(2)*t(i,2));
end

