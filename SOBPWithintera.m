clear;
E=110;%MeV
delta=10;%MeV
Emax=200;
Ep=240;
Emin=110;
w=zeros(1,46);
for i=1:45
    mu=(0.43-0.05*Emax/Ep)-0.4*(Emax/Ep)^2*(1-(108+2*i)/Emax);
    w(i)=(Emax^2-(108+2*i-delta/2)^2)^mu-(Emax^2-(108+2*i+delta/2)^2)^mu;
end
mu=0.43-0.05*Emax/Ep;
w(46)=(Emax^2-(Emax-delta/2)^2)^mu;
%w mono
Wmono=w./max(w);
Wmono=round(w./max(w),4);
