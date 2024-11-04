function [x,y] = Gamma1Derivate (t) #+
  
  x=-sqrt((16.0/25.0)*pow(sin(t), 2) + 4*pow(cos(t), 2))*sin(t) - 84.0/25.0*sin(t)*pow(cos(t), 2)/sqrt((16.0/25.0)*pow(sin(t), 2) + 4*pow(cos(t), 2));
  
  y=sqrt((16.0/25.0)*pow(sin(t), 2) + 4*pow(cos(t), 2))*cos(t) - 84.0/25.0*pow(sin(t), 2)*cos(t)/sqrt((16.0/25.0)*pow(sin(t), 2) + 4*pow(cos(t), 2));
  
endfunction