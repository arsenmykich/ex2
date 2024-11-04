function er = GetResult (psi1, psi2,x,t,n,p)
  res = FindU(psi1,psi2,x,t,n);
  ex = ExactSolution(x(1),x(2));
  er = abs(ex-res);

  printf('Our res in %s : %d, exact res : %d, error : %d \n',p,res,ex,er);
endfunction
