function retval = Q1 (x, t) #+
  [x11 x12] = Gamma1(t);
  retval = log(1/norm([(x(1)-x11) (x(2)-x12)]));
endfunction
