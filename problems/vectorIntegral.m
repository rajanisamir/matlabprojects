function [integratedVector] = vectorIntegral(vector,variableValue,conditionvector)
%VECTORINTEGRAL Summary of this function goes here
%   Detailed explanation goes here
syms t;
integratedVector = int(vector);
valueVector = subs(integratedVector,t,variableValue);
cVector = conditionvector-valueVector;
integratedVector = integratedVector + cVector;
end