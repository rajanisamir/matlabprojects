function [partialDerivativeMatrix] = partialDerivative(func)
%PARTIALDERIVATIVE This function returns a matrix of the z(xy) and z(yx) to
%confirm that these partial derivatives are equal. This works for problems
%21-30 on pg. 876 of Ch. 13.
syms x y;

pDx = diff(func,x);
final1 = diff(pDx,y);

pDy = diff(func,y);
final2 = diff(pDy,x);

partialDerivativeMatrix = [final1 final2];
end

