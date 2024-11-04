function retval = K2 (t, tau) #+
  [x11 x12] = Gamma1(t);
  [x21 x22] = Gamma2(t);
  
  [x11_1 x12_1] = Gamma1Derivate(t);
  [x21_1 x22_1] = Gamma2Derivate(t);
  
  [x11_2 x12_2] = Gamma1Derivate2(t);
  [x21_2 x22_2] = Gamma2Derivate2(t);
  
  [x11_t x12_t] = Gamma1(tau);
  [x21_t x22_t] = Gamma2(tau);
  
  [x11_1_t x12_1_t] = Gamma1Derivate(tau);
  [x21_1_t x22_1_t] = Gamma2Derivate(tau);
  
  [x11_2_t x12_2_t] = Gamma1Derivate2(tau);
  [x21_2_t x22_2_t] = Gamma2Derivate2(tau);
    
  if(t == tau)
      retval = (x21_2*x22_1-x22_2*x21_1)/(norm([x21_1 x22_1])*2*(norm([x21_1 x22_1])^2));
  else
      retval = ((x21_t - x21)*x22_1 - (x22_t-x22)*x21_1)/(norm([x21_1 x22_1])*(norm([(x21-x21_t) (x22-x22_t)])^2));
  end
endfunction
