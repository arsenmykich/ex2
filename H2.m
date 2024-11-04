function retval = H2 (t, tau) #+

  [x11 x12] = Gamma1(t);
  
  [x21_t x22_t] = Gamma2(tau);
  
  retval = log(1/(norm([(x11-x21_t) (x12-x22_t)])));
endfunction
