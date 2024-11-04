function retval = F2 (t) #+
    [x1 x2] = Gamma2(t);

    [d2x,d2y]=Gamma2Derivate(t);

    v = ([d2y,-d2x]) / norm([d2x,d2y]);
  
    grad = ([2*x1, -2*x2]);

    retval=grad(1)*v(1)+grad(2)*v(2);
endfunction
