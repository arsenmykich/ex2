function [x y] = Gamma2Derivate2 (t) #+
  
  x=(-sqrt((4.0/25.0)*pow(sin(t), 2) + pow(cos(t), 2)) - 21.0/25.0*(-pow(sin(t), 2) + pow(cos(t), 2) + 21*pow(sin(t), 2)*pow(cos(t), 2)/(4*pow(sin(t), 2) + 25*pow(cos(t), 2)))/sqrt((4.0/25.0)*pow(sin(t), 2) + pow(cos(t), 2)) + (42.0/25.0)*pow(sin(t), 2)/sqrt((4.0/25.0)*pow(sin(t), 2) + pow(cos(t), 2)))*cos(t);
  
  y=-(sqrt((4.0/25.0)*pow(sin(t), 2) + pow(cos(t), 2)) + (21.0/25.0)*(-pow(sin(t), 2) + pow(cos(t), 2) + 21*pow(sin(t), 2)*pow(cos(t), 2)/(4*pow(sin(t), 2) + 25*pow(cos(t), 2)))/sqrt((4.0/25.0)*pow(sin(t), 2) + pow(cos(t), 2)) + (42.0/25.0)*pow(cos(t), 2)/sqrt((4.0/25.0)*pow(sin(t), 2) + pow(cos(t), 2)))*sin(t);
  
endfunction
