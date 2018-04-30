function [solution] = lineIntegral(z,xoft,yoft,lowert,uppert)
%Finds the line integral of a function defined parametrically.
syms x;
syms y;
syms t;
newfunc = subs(z,x,xoft);
newerfunc = subs(newfunc,y,yoft);
newestfunc = newerfunc*(sqrt(((diff(xoft,t))^2 + (diff(yoft,t))^2)));
solution = int(newestfunc,t,lowert,uppert);
end