

     
function dy=In(k,a,t, y)
    
    dy(1)=-k(1)*y(1)*y(2)+(k(3)+k(2))*y(3);
    dy(2)= -k(1)*y(1)*y(2)+k(3)*y(3)+k(2)*a*y(3);
    dy(3)= k(1)*y(1)*y(2)-(k(3)+k(2))*y(3);
    dy(4)=k(2)*y(3);
      
    dy = dy';

end
