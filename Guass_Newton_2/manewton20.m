function X=manewton20(fun,dfun,x0,ep,N,y,t)

k=0;

while k<N
    F=feval(fun,y,t,x0);    %feval(),执行指定的函数,参数是函数名与其输入参数
    J=feval(dfun,y,t,x0);    
    deltaX=-(J'*J)\J'*F';

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
end