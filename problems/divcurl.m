function [divcurlmatrix] = divcurl(Fi,Fj,Fk)
%Computes the divergence and curl of a given vector field, and returns them
%in the form of a matrix.
syms x;
syms y;
syms z;
sym i;
sym j;
syms k;
div = diff(Fi,x) + diff(Fj,y) + diff(Fk,z);
curl = (i*(diff(Fk,y)-diff(Fj,z)))-(j*(diff(Fk,x)-diff(Fi,z)))+(k*(diff(Fj,x)-diff(Fi,y)));
divcurlmatrix = [div curl];
end

