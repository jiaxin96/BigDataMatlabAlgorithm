clc,clear
fid=fopen('data.txt','r');
n1=3;n2=7;
a=[];
for i=1:n1
tmp=str2num(fgetl(fid));
a=[a;tmp]; %��׼����жϾ���
end
for i=1:n1
    str1=char(['b',int2str(i),'=[];']);
    str2=char(['b',int2str(i),'=[b',int2str(i),';tmp];']);
    eval(str1);
    for j=1:n2
        tmp=str2num(fgetl(fid));
        eval(str2); %����������жϾ���
    end
end
%һ����ָ��
disp('һ����ָ��')
ri=[0,0,0.58,0.90,1.12,1.24,1.32,1.41,1.45]

[x,y]=eig(a);
lamda=max(diag(y));
num=find(diag(y)==lamda);
w0=x(:,num)/sum(x(:,num));
disp('�жϾ���һ���Ա���')
cr0=(lamda-n1)/(n1-1)/ri(n1)
for i=1:n1
[x,y]=eig(eval(char(['b',int2str(i)])));
lamda=max(diag(y));
num=find(diag(y)==lamda);
w1(:,i)=x(:,num)/sum(x(:,num));
cr1(i)=(lamda-n2)/(n2-1)/ri(n2);
end
disp('��ʩ���жϾ���һ���Ա���')
cr1
disp('��ʩ��Ȩ��')
ts=w1*w0
disp('��ʩ��һ���Ա���')
cr=cr1*w0