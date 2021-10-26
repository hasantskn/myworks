clc;
clear;
clear all;

lambda = 10^(-4);
k = 2*(pi/lambda);
h=0.0005;

TM1= fzero(@(x) f(x) - tan(h*x),5000);
x1 = sqrt(k^2 *(1.5^2) - TM1^2);
disp(x1)

TM2= fzero(@(x) f(x) - tan(h*x),10000);
x2 = sqrt(k^2 *(1.5^2) - TM2^2);
disp(x2)
TM3 = fzero(@(x) f(x) - tan(h*x),15000);
x3 = sqrt(k^2 *(1.5^2) - TM3^2);
disp(x3)

TM4 = fzero(@(x) f(x) - tan(h*x),20000);
x4 = sqrt(k^2 *(1.5^2) - TM4^2);
disp(x4)

function y = f(kappa)
    ns = 1.45;
    nc = 1.40;
    h = 0.0005;
    nf = 1.5;
    lambda = 10^(-4);
    k = 2*(pi/lambda);
    gammas = sqrt((sqrt((k^2)*(nf^2)-(kappa^2)))^2-((k^2)*(ns^2)));
    gammac =  sqrt((sqrt((k^2)*(nf^2)-(kappa^2)))^2-((k^2)*(nc^2)));
    y = ((kappa*(((nf^2)/(ns^2))*gammas +((nf^2)/(nc^2))*gammac))/(kappa^2 - ((gammas*gammac)*((nf^4)/(nc^2 * ns^2)))));
end