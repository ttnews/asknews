x0=[-2;1;3;-1]; [t,x]=ode45('fun',[0 1000],x0);x1=x(:,1);x2=x(:,2);x3=x(:,3);x4=x(:,4);b1=abs(x1-x2);b2=abs(x1-x3);b3=abs(x1-x4);b4=abs(x2-x3);b5=abs(x2-x4);b6=abs(x3-x4);b=max([b1,b2,b3,b4,b5,b6],[],2);plot(t,b,'-c','LineWidth',1);hold on;plot(t,repmat(0.2,[1,261]),'--k','LineWidth',1);xlabel('time t');ylabel('\Delta');

