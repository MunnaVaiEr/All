%Lab:-3
%Title:- To calculate root of the equation using Newton Raphson method.
%Developed by:- Roshani Mishra
%Roll No:- 221434
%Date:- 2024/12/06
%------Three Critical statements-----

close all;
clear variables;
clc;

%-----Function Declaration Section-----
syms x;
func=input('enter the function f(x)=');
f=inline(func);
g=diff(f(x));
df=inline (g);
disp(f);
disp(df)
E=0.00005;

% %-----User input section-----
a=input('enter the value for a=');

fa=f(a);
da=df(a);



   
temp=[a;fa];
disp(temp);

%-----Calculation Section-----
x=a-(fa/da);
fx=f(x);
temp=[a,fa,da,x,fx];
disp('_______________________________________________________________');
disp('          a     f(a)       da         x       f(x)');
disp('_______________________________________________________________');
% disp('The root of the given function lies at x=');
disp(temp);
temp1=0;
while(abs(temp1-x)>E)
  temp1=x;  
    a=x;
    fa=fx;

 da=df(a);
   
x=a-(fa/da);
fx=f(x);
temp=[a,fa,da,x,fx];
disp(temp);
end
p(temp);
% end

%-----Output section-----
disp('_____________________________________________________');
out=strcat('the root lies at x=',num2str(x),'with f(x)=',num2str(fx));
disp(out);






    