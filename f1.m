function y=f1(t,x)

ep=0.1;a1=1;
a2=1;a3=1;a4=1;if sqrt((x(3)-x(1))^2+(x(4)-x(2))^2)<ep
a1=0;end
if sqrt((x(3)-x(5))^2+(x(4)-x(6))^2)<ep
a2=0;end
if sqrt((x(5)-x(1))^2+(x(6)-x(2))^2)<ep
a3=0;end
if sqrt((x(7)-x(1))^2+(x(8)-x(2))^2)<ep
a4=0;end
w11=a1*(x(3)-x(1))+a3*(x(5)-x(1))+a4*(x(7)-x(1));w12=a1*(x(4)-x(2))+a3*(x(6)-x(2))+a4*(x(8)-x(2));w21=a1*(x(1)-x(3))+a2*(x(5)-x(3));w22=a1*(x(2)-x(4))+a2*(x(6)-x(4));w31=a2*(x(3)-x(5))+a3*(x(1)-x(5));w32=a2*(x(4)-x(6))+a3*(x(2)-x(6));w41=a4*(x(1)-x(7));w42=a4*(x(2)-x(8));ph1=(2.*(x(1)+1).^4+3.*(x(2)-1).^2+(x(1)+1).*(x(2)-1)-29).*2;ph2=(3.*(x(3)-1).^2+(x(4)+3).^2-1.*(x(3)-1).*(x(4)+3)-14).*2;ph3=((x(5)-2).^2+3.*x(6).^2-9).*2;ph1d=[8*(x(1)+1).^3+x(2)-1;6*(x(2)-1)+x(1)+1].*2;ph2d=[6*(x(3)-1)-x(4)-3;2*(x(4)+3)-x(3)+1].*2;ph3d=[2*(x(5)-2);6*x(6)].*2;
if ph1<=1
u11=w11;u12=w12;
elseif ph1d'*[w11;w12]<=0
u11=w11;u12=w12;
else
Gamma1=(ph1d*ph1d')./norm(ph1d).^2; m=(eye(2).*2-ph1.*Gamma1)*[w11;w12];
u11=m(1,1);u12=m(2,1);end
if ph2<=1
u21=w21;u22=w22;
elseif ph2d'*[w21;w22]<=0
u21=w21;
u22=w22;
else
Gamma2=(ph2d*ph2d')./norm(ph2d).^2; m=(eye(2).*2-ph2.*Gamma2)*[w21;w22];u21=m(1,1);u22=m(2,1);
end
if ph3<=1
u31=w31;u32=w32;
elseif ph3d'*[w31;w32]<=0
u31=w31;u32=w32;
else
Gamma3=(ph3d*ph3d')./norm(ph3d).^2;m=(eye(2).*2-ph3.*Gamma3)*[w31;w32];u31=m(1,1);u32=m(2,1);
end
u41=w41;u42=w42;y=[u11;u12;u21;u22;u31;u32;u41;u42];