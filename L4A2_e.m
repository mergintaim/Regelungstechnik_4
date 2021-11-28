close all
clear all
Verstaerkungsfaktoren=[1,3,8,35/4,10];

hold on
for i = 5:5
    K_r=Verstaerkungsfaktoren(i);
    simOut = sim('L4A2_e_simu.mdl',0.3);
    plot(get(simOut.ScopeData,1).Values.Time,get(simOut.ScopeData,1).Values.Data);
    xlabel 'Zeit [s]'
    title 'Regelgröße'
end
grid on
hold off

[pks,time_ind]=findpeaks(get(simOut.ScopeData,1).Values.Data(3000:end));
for i = 1:(length(time_ind))
    times(i) = get(simOut.ScopeData,1).Values.Time(i);
end
timediff = diff(times);
timediff_mean = mean(timediff);
omega = 2*pi*(1/timediff_mean)


% x=findpeaks(get(simOut.ScopeData,1).Values.Data)
% t1=get(simOut.ScopeData,1).Values.Data(find(get(simOut.ScopeData,1).Values.Data==x(end-2)));
% t2=get(simOut.ScopeData,1).Values.Data(find(get(simOut.ScopeData,1).Values.Data==x(end)));

