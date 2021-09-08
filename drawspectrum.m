% m=zeros(10959,11);
c=299792458;
e=1.602176634*10^-19;
mp=1.672621637*10^-27;
m=dlmread('mydata_1.phsp');
count=1;
for i=1:9870
    if(m(i,8)==2212)
        n(count)=m(i,6);
        count=count+1;
    end
end
n=n.*e*10^6;
n=n./(mp*c^2);
x=0.004:0.004:0.4;
[f,x]=ksdensity(n);

plot(x,f);