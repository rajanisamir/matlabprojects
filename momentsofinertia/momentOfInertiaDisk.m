function [moi] = momentOfInertiaDisk(fill)
%finds the moment of inertia of a disk
syms r;
syms l;
syms m;
syms radius;
syms theta;
if fill == 'hlw'
    moi = m*r^2;
elseif fill == 'sld'
    moi = int(r^2*r*m/(pi*radius^2),r,radius,0);
    moi = int(moi,theta,2*pi,0);
end
end