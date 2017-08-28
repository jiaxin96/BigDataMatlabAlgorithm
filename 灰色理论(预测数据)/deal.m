clear
syms a b;
c = [a b]';
A = [89677, 99215, 109655, 120333, 135823, 159878, 182321, 209407, 246619, 300670];
B = cumsum(A);
n = length(A);
for i=1:(n-1)
    C(i) = (B(i)+B(i+1))/2; %生成累加矩阵
end
% 计算待定参数的值
D = A;D(1) = [];
D = D';
E = [-C;ones(1,n-1)];
c = inv(E*E')*E*D;
c = c';
a = c(1);
b = c(2);
% 预测后续的数据
F = [];
F(1) = A(1);
for i = 2:(n+10)
    F(i) = (A(1)-b/a)/exp(a*(i-1))+b/a;
end
G = [];
G(1) = A(1);
for i = 2:(n+10)
    G(i) = F(i)-F(i-1);
end
t1 = 1999:2008
t2 = 1999:2018
G
plot(t1,A,'o', t2,G)
