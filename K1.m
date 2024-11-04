function retval = K1 (t, tau) #+
  [x11 x12] = Gamma1(t);
  [x21 x22] = Gamma2(t);

  [x11_1 x12_1] = Gamma1Derivate(t);
  [x21_1 x22_1] = Gamma2Derivate(t);
  
  [x11_t x12_t] = Gamma1(tau);
  [x21_t x22_t] = Gamma2(tau);

  [x11_1_t x12_1_t] = Gamma1Derivate(tau);
  [x21_1_t x22_1_t] = Gamma2Derivate(tau);
  
  retval = ((x11_t - x21)*x22_1 - (x12_t-x22)*x21_1)/(norm([x21_1 x22_1])*(norm([(x21-x11_t) (x22-x12_t)])^2));
endfunction
