clear;clc;
fl=fopen("responses_1","r");
fm=fopen(responses_2","r");
HD=0;
count=0;
n=10240;
for i=1:n
    A=fgetl(fl);
    B=fgetl(fm);
    sum=32;
    for j=1:32
        if A(j)==B(j)
            sum=sum;
        else
            disp('false');
            disp(i);
            sum=sum-1;
            count=count+1;
        end
    end
    HD=(sum/32)*100+HD;
end
reliability_value=HD/n