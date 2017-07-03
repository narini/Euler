%A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
%Find the largest palindrome made from the product of two 3-digit numbers.

%Summen af alle tal med to cifre skal udregnes, tjekkes om det er
%palindromic og gemmes hvis det er ellers smides væk

clear all
SVAR = 0;
v = 0;
for i = 100:999;
    for j = 100:999;

        s = i * j; % summer i og j
        str = num2str(s);%ligger summen i str

        revs = fliplr(str);%flipper str

        if revs==str; %hvis flippet str er str er tallet palindromic og det gemmes som v
        v = s;
            %else v = 0;
        end
        
         if  SVAR < v;
             SVAR = v;
         end
    end
    
end

%Det højeste tal gemmes som SVAR