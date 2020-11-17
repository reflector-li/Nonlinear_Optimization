function X=newton_fun(fun,dfun,hfun,x0,ep,N,y,t)

k=0;

while k<N
    F=feval(fun,y,t,x0);     %feval(),执行指定的函数,参数是函数名与其输入参数
    J=feval(dfun,y,t,x0);   
    H = feval(hfun,y,t,x0);
    %value = eig(J); %验证雅可比矩阵非奇异
    deltaX=-H\J';

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

fprintf('x_1=%f, x_2=%f  x_3 =%f \n', X(1),X(2),X(3));
disp(['k= ',num2str(k)]);
fprintf('目标函数：%f \n',F );
end
