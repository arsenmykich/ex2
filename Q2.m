function retval = Q2 (x, t) #+
  [x21 x22] = Gamma2(t);
  retval = log(1/norm([(x(1)-x21) (x(2)-x22)]));
endfunction
