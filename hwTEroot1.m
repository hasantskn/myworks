clc;
clear;
clear all;

lambda = 10^(-4);
k = 2*(pi/lambda);
h=0.0005;

TE1 = fzero(@(x) f(x) - tan(h*x),5000);
x1 = sqrt(k^2 *(1.5^2) - TE1^2);
disp(x1)

TE2 = fzero(@(x) f(x) - tan(h*x),10000);
x2 = sqrt(k^2 *(1.5^2) - TE2^2);
disp(x2)

TE3 = fzero(@(x) f(x) - tan(h*x),15000);
x3 = sqrt(k^2 *(1.5^2) - TE3^2);
disp(x3)

TE4 = fzero(@(x) f(x) - tan(h*x),20000);
x4 = sqrt(k^2 *(1.5^2) - TE4^2);
disp(x4)

function y = f(kappa)
    ns = 1.45;
    nc = 1.40;
    h = 0.0005;
    nf = 1.5;
    lambda = 10^(-4);
    k = 2*(pi/lambda);
    gammas = sqrt((sqrt((k^2)*(nf^2)-(kappa^2)))^2 - ((k^2)*(ns^2)));
    gammac =  sqrt((sqrt((k^2)*(nf^2)-(kappa^2)))^2 - ((k^2)*(nc^2)));
    y = divM(add(gammas,gammac),mulp(kappa,subs(1,divM(mulp(gammas,gammac),kappa^2))));
end

function addMatrix = add(a,b)
  addMatrix = a +b;
end

function subsMatrix = subs(a,b)
    subsMatrix = a -b;
end

function mulpMatrix = mulp(a,b)
    mulpMatrix = a.*b;
end

function divMatrix = divM(a,b)
    divMatrix  = a./b;
end
