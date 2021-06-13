g1='2.*(x+1).^4+3.*(y-1).^2+(x+1).*(y-1)-30';g2='3.*(x-1).^2+(y+3).^2-(x-1).*(y+3)-15';g3='(x-2).^2+3.*y.^2-10';h1=ezplot(g1,[-10,7,-10,7]);
set(h1,'Color','g','LineStyle',':');hold on;h2=ezplot(g2,[-10,7,-10,7]);set(h2,'Color','r','LineStyle',':');hold on;h3=ezplot(g3,[-10,7,-10,7]);set(h3,'Color','b','LineStyle',':');hold on;x0=[-2;3;1;-5;4;-1;-2;-3];
[t,x]=ode45('f1',[0 100],x0); x11=x(:,1);x12=x(:,2);x21=x(:,3);x22=x(:,4); 
x31=x(:,5);x32=x(:,6);x41=x(:,7);x42=x(:,8);a1=plot(x11,x12,'-g','LineWidth',1);hold on;a2=plot(x21,x22,'-r','LineWidth',1);hold on;
a3=plot(x31,x32,'-b','LineWidth',1);hold on;a4=plot(x41,x42,'-m','LineWidth',1);hold on;plot(-2,3,'dg','MarkerSize',5);hold on;
plot(1,-5,'dr','MarkerSize',5);hold on;plot(4,-1,'db','MarkerSize',5);hold on;
plot(-2,-3,'dm','MarkerSize',5);hold on;legend([a1,a2,a3,a4],'agent 1','agent 2','agent 3','agent 4');xlabel('state component x_{i1}');ylabel('state component x_{i2}');
