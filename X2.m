function chisq = X2(exp,sim,var)%% given experimental data, simulation, variance% calculates chisquared value based on% X^2 = (exp-sim)^2/var^2 % WARNING: this assumes that exp and sim are% scaled appropriately already%% SRK 10-02-2004% this didn't give reasonable values, so changed to % simply using variance in denom. SRK 17-02-2004num = length(exp);chisq = (1/(num-1)) * sum(((exp - sim).^2)/(sqrt(var)));