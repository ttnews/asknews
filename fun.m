function y=fun(t,x)

ep=0.1;a1=1;a2=1;a3=1;a4=1;if abs(x(1)-x(2))<ep
a1=0;
end
if abs(x(3)-x(2))<ep
a2=0;
end
if abs(x(3)-x(1))<ep
a3=0;
end
if abs(x(4)-x(1))<ep
a4=0;
end
w1=a1*(g2(x(2))-x(1))+a3*(g3(x(3))-x(1))+a4*(g4(x(4))-x(1));w2=a1*(g1(x(1))-x(2))+a2*(g3(x(3))-x(2));w3=a2*(g2(x(2))-x(3))+a3*(g1(x(1))-x(3));w4=a4*(g1(x(1))-x(4));y=[w1;w2;w3;w4];




  