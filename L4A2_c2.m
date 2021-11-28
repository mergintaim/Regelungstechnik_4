close all
Verstaerkungsfaktoren=[3,35/4,10];

hold on
for i = 1:size(Verstaerkungsfaktoren,2)
    K_r=Verstaerkungsfaktoren(i);
    simOut = sim('L4A2_simu.mdl',0.02);
    figure('Name',sprintf("$K_R$:%i",Verstaerkungsfaktoren(i)));
    tiledlayout(3,1)
    nexttile
    plot(get(simOut.ScopeData,1).Values.Time,get(simOut.ScopeData,1).Values.Data);
    xlabel 'Zeit [s]'
    nexttile
    plot(get(simOut.ScopeData,2).Values.Time,get(simOut.ScopeData,2).Values.Data);
    xlabel 'Zeit [s]'
    nexttile
    plot(get(simOut.ScopeData,3).Values.Time,get(simOut.ScopeData,3).Values.Data);
    xlabel 'Zeit [s]'
end
grid on
hold off