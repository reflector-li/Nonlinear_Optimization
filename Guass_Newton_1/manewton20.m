function X=manewton20(fun,dfun,x0,ep,N)

k=0;

while k<N
    F=feval(fun,x0);    %feval(),ִ��ָ���ĺ���,�����Ǻ����������������
    J=feval(dfun,x0);    
    value = eig(J); %��֤�ſɱȾ��������
    deltaX=-J\F';

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
fprintf('x_1=%f, x_2=%f\n', X(1),X(2));
disp(['k= ',num2str(k)]);
end