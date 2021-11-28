close all

hold on
K_r=10;
simOut = sim('L4A2_e_simu.mdl',0.3);
plot(get(simOut.ScopeData,1).Values.Time,get(simOut.ScopeData,1).Values.Data);
plot(get(simOut.ScopeData,3).Values.Time,get(simOut.ScopeData,3).Values.Data);
xlabel 'Zeit [s]'
legend ('Regelgröße','Stellgröße')
grid on
hold off

% brechnung Kreisfrequenz
simOut = sim('L4A2_e_simu.mdl',0.3);
x=findpeaks(get(simOut.ScopeData,1).Values.Data(3000:end));
t1=get(simOut.ScopeData,1).Values.Time(find(get(simOut.ScopeData,1).Values.Data==x(end-1)));
t2=get(simOut.ScopeData,1).Values.Time(find(get(simOut.ScopeData,1).Values.Data==x(end)));
kreisfeqenz = 2*pi/(t2-t1)
