clear;
E=110;%MeV
delta=2;%MeV
mu=0.43;
Emax=200;
Emin=110;
w=zeros(1,46);
for i=1:45
    w(i)=(Emax^2-(108+2*i-delta/2)^2)^mu-(Emax^2-(108+2*i+delta/2)^2)^mu;
end
w(46)=(Emax^2-(Emax-delta/2)^2)^mu;
w1=w./max(w);