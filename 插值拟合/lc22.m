temps=[82,81,80,82,84;79,63,61,65,87;84,84,82,85,86];
%下面开始进行二维函数的三阶插值。
 width=1:5; depth=1:3; di=1:0.2:3; wi=1:0.2:5;
 [WI,DI]=meshgrid(wi,di);%增加了节点数目
 ZI=interp2(width,depth,temps,WI,DI,'cubic'); %  对数据（width,depth,temps）进
 %  行三阶插值拟合。
 surfc(WI,DI,ZI)

% contour(WI,DI,ZI)
