function X=newton_fun(fun,dfun,hfun,x0,ep,N,y,t)

k=0;

while k<N
    F=feval(fun,y,t,x0);     %feval(),ִ��ָ���ĺ���,�����Ǻ����������������
    J=feval(dfun,y,t,x0);   
    H = feval(hfun,y,t,x0);
    %value = eig(J); %��֤�ſɱȾ��������
    deltaX=-H\J';

    k=k+1;

    X=x0'+deltaX;
    if norm(deltaX,inf)<ep %A������һ�к�
        break;

    elseif k==N

        warning('�Ѵﵽ�����������ޣ�');

    else

        x0=X';

    end

end

fprintf('x_1=%f, x_2=%f  x_3 =%f \n', X(1),X(2),X(3));
disp(['k= ',num2str(k)]);
fprintf('Ŀ�꺯����%f \n',F );
end
