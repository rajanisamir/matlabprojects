function [moi] = momentOfInertiaRod(axisposition)
%finds the moment of inertia of a rod
syms r;
syms l;
syms m;
syms tl;
if axisposition == 'mid'
    bottomlim = -tl/2;
    toplim = tl/2;
elseif axisposition == 'end'
    bottomlim = 0;
    toplim = tl;
end
moi = int((r^2)*m/tl,r,bottomlim,toplim);
end