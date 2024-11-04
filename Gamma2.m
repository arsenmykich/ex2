function [x,y] = Gamma2 (t) #+
  x = sqrt((1*cos(t)).^2+(0.4*sin(t)).^2).*cos(t);
  y = sqrt((1*cos(t)).^2+(0.4*sin(t)).^2).*sin(t);
endfunction
