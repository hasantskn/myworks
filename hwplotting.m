clc;
clear;
clear all;

nf = 1.5;
ns = 1.45;
nc = 1.4;
h= 0.0005;
lambda = 10^(-4);
k = 2*((pi)/lambda);

kappamax = sqrt((k^2)*(nf^2) -(k^2)*(ns^2));
kappa= [0:1:kappamax];

beta = sqrt((k^2)*(nf^2) - kappa.^2);

gammas = sqrt((beta.^2)-(k^2)*(ns^2));
gammac = sqrt((beta.^2)-(k^2)*(nc^2));

disp(add(gammas,gammac))

y = divM(add(gammas,gammac),mulp(kappa,subs(1,divM(mulp(gammas,gammac),kappa.^2))));

plot(kappa,tan(kappa.*h),kappa,y);
xlabel('k(kappa)')
ylabel('tan(kh)')
title('Graphical Plot of TE Eigenvalue Equation') 
grid 
ylim([-10 10])


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

