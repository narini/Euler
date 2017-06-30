%Vi skal opskrive hele fibonacci rækken 1,2,3,5,8,13 ...
clear all
F=[1,2,3];%F er rækken med fibonacci numre
%i=;

for i=2:2000;

if F(i)>4000000;
    break;
end
F(i+1)=F(i-1)+F(i);
end 
F=F(1:i-1);
F=F';

%nu skal vi isolere dem der er lige
for j=1:length(F);

    b = mod(F(j),2); %tager hver element i F mod 2
    if b==0; % hvis det går op i 2 bliver b=0
        FE(j) = F(j); %I så fald gemmes værdien i FE
    end

end

Svar = sum(FE)% summer alle lige tal 