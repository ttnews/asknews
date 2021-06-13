for gamma=1:50:1000
a=0;for k=1:1:50
x0=-gamma+2*gamma*rand(4,1);[t,x]=ode45('fun',[0:1:1000],x0);x1=x(:,1);x2=x(:,2);
x3=x(:,3);x4=x(:,4);b1=abs(x1-x2);b2=abs(x1-x3);b3=abs(x1-x4);b4=abs(x2-x3);
b5=abs(x2-x4);b6=abs(x3-x4);b=max([b1,b2,b3,b4,b5,b6],[],2);result=500;for i=1:1:1001
if abs(b(i+1)-b(i))<0.0001
result=i;break;end  
end a=a+result;end
a=a/50;plot(gamma,a,'sc','markersize',8);hold on;
end xlabel('time \gamma');ylabel('T');
