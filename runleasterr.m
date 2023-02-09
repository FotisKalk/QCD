close all
clear all

rng('shuffle')
[A,B,C,D]=files;
[x0,UB,LB]=newinitial;
energy_case=1; %energy cases: 7.7/11.5/19.6/27/39.6/62.4/200

options = optimset('Display','iter','MaxFunEvals',5000,'MaxIter',5000,'TolFun',1e-20,'TolX',1e-10);

[x1,fM1]=fminsearchbnd(@(x1) leasterr1(x1,A,energy_case),x0,LB,UB,options);

[x2,fM2]=fminsearchbnd(@(x2) leasterr2(x2,B,energy_case),x0,LB,UB,options);

[x3,fM3]=fminsearchbnd(@(x3) leasterr3(x3,C,energy_case),x0,LB,UB,options);

[x4,fM4]=fminsearchbnd(@(x4) leasterr4(x4,D,energy_case),x0,LB,UB,options);

disp([x1(1) x1(2) x1(3) x1(4) x1(5) x1(6) x1(7) x1(8)])

disp([x2(1) x2(2) x2(3) x2(4) x2(5) x2(6) x2(7) x2(8)])

disp([x3(1) x3(2) x3(3) x3(4) x3(5) x3(6) x3(7) x3(8)])

disp([x4(1) x4(2) x4(3) x4(4) x4(5) x4(6) x4(7) x4(8)])

plots_case1(x1,x2,x3,x4,A,B,C,D,energy_case);

energy_dependance(energy_case,x);