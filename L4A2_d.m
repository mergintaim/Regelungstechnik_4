close all
Verstaerkungsfaktoren=[1,3,8,35/4,10];

hold on
for i = 5:5
    K_r=Verstaerkungsfaktoren(i);
    simOut = sim('L4A2_d_simu.mdl',0.02);
    plot(get(simOut.ScopeData,1).Values.Time,get(simOut.ScopeData,1).Values.Data);
    xlabel 'Zeit [s]'
    title 'Regelgröße'
end
grid on
hold off