%���ܽ��к������Σ�����ԭ����������jacobi_2
function J = jacobi(y,t,x)
for i = 1:5
    J(i,1) = t(i,1)*y(i)-x(3)*t(i,1);
    J(i,2) = t(i,2)*y(i);
    J(i,3) = -x(1)*t(i,1);
end
end