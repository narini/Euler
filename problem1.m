%Projekt Euler problem 1
clear all

a = 1000; % Det antal der unders�ges op til. 
c(1) = 3; % Det tal der unders�ges
c(2) = 5; % det tal der unders�ges
v=1:1:(a-1); % den vektor af tal der skal unders�ges


%for i=length(c);
for j=v %vektor der skal unders�ges
    b=j/3; %tal i v deles med 3
    SVAR = ismember(b,v); %hvis tal i b er hel tal er de i v og derfor f�r ded v�rdien 1
    if SVAR == 1; %for hver element i b unders�ges det om de er heltal. hvis det er kommer elemntet fra v i vektoren A eller kommer et 0
        A(j)=j;
    else A(j)=0;
    end
    
    b1=j/5;%hvert tal i v deles med 5
    SVAR1 = ismember(b1,v);%unders�ger om det er et heltal
    if SVAR1 == 1;
        A1(j)=j;
    else A1(j)=0;
    end
end
% Nu skal vi lave en vektor der indeholder alle tal fra de to vektorer
for i=1:length(A);
    if A(i)== 0; %hvis elementet i A er 0 s� kommer elementet fra A1 over i A3
        A3(i)=A1(i);
    else A3(i)=A(i); %hvis elementet i A ikke er 0 s� komme dette over i A3
    end
    end

%%
 S=sum(A3) %A3 er en vektor med alle tal multiples med 3 og 5. S er summen af disse tal

