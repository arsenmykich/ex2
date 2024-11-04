function retval = FindU (psi1, psi2,x,t,n)
  sum = 0;
  for ii = 1:2*n
    sum+= psi1(ii)*Q1(x,t(ii)) + psi2(ii)*Q2(x,t(ii));
  end
  retval = sum/(2*n);
endfunction
  #for jj = 1:2*n
  #  [x21_1 x22_1] = Gamma2Derivate(t(jj));
  #  [x11_1 x12_1] = Gamma1Derivate(t(jj));
  #  sum+= psi1(jj)/(norm([x21_1 x22_1]))*Q1(x,t(jj)) + psi2(jj)/(norm([x11_1 x12_1]))*Q2(x,t(jj));
  #end