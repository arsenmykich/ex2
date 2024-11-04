function retval = H12 (t, tau) #+

  [x11 x12] = Gamma1(t);
  [x21 x22] = Gamma2(t);
 
  [x11_1 x12_1] = Gamma1Derivate(t);
  [x21_1 x22_1] = Gamma2Derivate(t);
  
  [x11_t x12_t] = Gamma1(tau);
  [x21_t x22_t] = Gamma2(tau);
  
  if(t == tau)
    retval = (1/2)*log( 1/ (e* (norm([x11_1 x12_1])^2)) );
  else
    retval = (1/2)*log( ( (4/e)*(sin((t-tau)/2))^2 )/ ((norm([(x11-x11_t) (x12-x12_t)]))^2) );
  end
endfunction
