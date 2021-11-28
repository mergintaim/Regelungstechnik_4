close all
Verstaerkungsfaktoren=[1,3,8,35/4,10];

hold on
for i = 5:5
    K_r=Verstaerkungsfaktoren(i);
    simOut = sim('L4A2_e_simu.mdl',0.2);
    plot(get(simOut.ScopeData,1).Values.Time,get(simOut.ScopeData,1).Values.Data);
    xlabel 'Zeit [s]'
    title 'Regelgröße'
end
grid on
hold off

x=findpeaks(get(simOut.ScopeData,1).Values.Data)
t1=get(simOut.ScopeData,1).Values.Data(find(get(simOut.ScopeData,1).Values.Data==x(end-2)));
t2=get(simOut.ScopeData,1).Values.Data(find(get(simOut.ScopeData,1).Values.Data==x(end)));

