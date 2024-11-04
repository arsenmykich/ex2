function [x,y] = Gamma2Derivate (t) #+
    
  x=-sqrt((4.0/25.0)*pow(sin(t), 2) + pow(cos(t), 2))*sin(t) - 21.0/25.0*sin(t)*pow(cos(t), 2)/sqrt((4.0/25.0)*pow(sin(t), 2) + pow(cos(t), 2));
  
  y=sqrt((4.0/25.0)*pow(sin(t), 2) + pow(cos(t), 2))*cos(t) - 21.0/25.0*pow(sin(t), 2)*cos(t)/sqrt((4.0/25.0)*pow(sin(t), 2) + pow(cos(t), 2));
  
endfunction
