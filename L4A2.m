close all
Verstaerkungsfaktoren=[1,3,8,35/4,10];

hold on
for i = 1:5
    K_r=Verstaerkungsfaktoren(i);
    simOut = sim('L4A2_simu.mdl',0.02);
    plot(get(simOut.ScopeData,1).Values.Time,get(simOut.ScopeData,1).Values.Data);
    xlabel 'Zeit [s]'
end
grid on
legend(sprintf("$K_R$:%i",Verstaerkungsfaktoren(1)),sprintf("$K_R$:%i",Verstaerkungsfaktoren(2)),sprintf("$K_R$:%i",Verstaerkungsfaktoren(3)),"$K_R$:$\frac{35}{4}$",sprintf("$K_R$:%i",Verstaerkungsfaktoren(5)),'Interpreter','latex')
hold off