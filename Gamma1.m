function [x,y] = Gamma1 (t) #+
  x = sqrt((2*cos(t)).^2+(0.8*sin(t)).^2).*cos(t);
  y = sqrt((2*cos(t)).^2+(0.8*sin(t)).^2).*sin(t);
endfunction
