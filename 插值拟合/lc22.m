temps=[82,81,80,82,84;79,63,61,65,87;84,84,82,85,86];
%���濪ʼ���ж�ά���������ײ�ֵ��
 width=1:5; depth=1:3; di=1:0.2:3; wi=1:0.2:5;
 [WI,DI]=meshgrid(wi,di);%�����˽ڵ���Ŀ
 ZI=interp2(width,depth,temps,WI,DI,'cubic'); %  �����ݣ�width,depth,temps����
 %  �����ײ�ֵ��ϡ�
 surfc(WI,DI,ZI)

% contour(WI,DI,ZI)
