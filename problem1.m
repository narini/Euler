%Projekt Euler problem 1
clear all

a = 1000; % Det antal der undersøges op til. 
c(1) = 3; % Det tal der undersøges
c(2) = 5; % det tal der undersøges
v=1:1:(a-1); % den vektor af tal der skal undersøges


%for i=length(c);
for j=v
    b=j/3;
    SVAR = ismember(b,v);
    if SVAR == 1;
        A(j)=j;
    else A(j)=0;
    end
    
    b1=j/5;
    SVAR1 = ismember(b1,v);
    if SVAR1 == 1;
        A1(j)=j;
    else A1(j)=0;
    end
end
%%
 A=A+A1;
 S=sum(A)



