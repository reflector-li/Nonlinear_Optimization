y=[0.126;0.219;0.076;0.126;0.186];
t =[1.000 1.000
      2.000 1.000
      1.000 2.000
      2.000 2.000
      0.100 0.000];
X=newton_fun('vf','jacobi','Hessian',[2 3 4],1e-3,200,y,t);