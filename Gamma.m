function [x,y] = Gamma (t,temp) #+
  x = sqrt(((1+temp)*cos(t)).^2+((0.4+temp*0.4)*sin(t)).^2).*cos(t);
  y = sqrt(((1+temp)*cos(t)).^2+((0.4+temp*0.4)*sin(t)).^2).*sin(t);
endfunction