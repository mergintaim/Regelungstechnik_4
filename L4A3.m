close all
R_1=10e3;
R_2=10e3;
R_3=10e3;
R_4=1e3;
R_5=10e3;

C_2=97e-9;
C_3=5.8e-9;
R_6=2200;

simOut = sim('L4A3_simu.mdl',0.04);
max(get(simOut.ScopeData,1).Values.Data)
hold on
plot(get(simOut.ScopeData,1).Values.Time,get(simOut.ScopeData,1).Values.Data);
plot(get(simOut.ScopeData,2).Values.Time,get(simOut.ScopeData,2).Values.Data);
hold off
xlabel 'Zeit [s]'
grid on
legend('Regelgröße',"Führungsgröße")