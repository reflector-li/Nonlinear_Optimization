function X=manewton20(fun,dfun,x0,ep,N)

k=0;

while k<N
    F=feval(fun,x0);    %feval(),执行指定的函数,参数是函数名与其输入参数
    J=feval(dfun,x0);    
    value = eig(J); %验证雅可比矩阵非奇异
    deltaX=-J\F';

    k=k+1;

    X=x0'+deltaX;
    if norm(deltaX,inf)<ep %A中最大的一行和
        break;

    elseif k==N

        warning('已达到迭代次数上限！');

    else

        x0=X';

    end

end
fprintf('x_1=%f, x_2=%f\n', X(1),X(2));
disp(['k= ',num2str(k)]);
end