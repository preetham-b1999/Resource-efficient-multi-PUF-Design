clear all;clc;
fl=fopen("responses","r");
HD=0;
n=10240
for i=1:n
    A=fgetl(fl);
    sum=0;
    for j=1:32
        sum=sum+A(j)-'0';
    end
    HD=(sum/32)*100+HD;
end
reliability_value=HD/n