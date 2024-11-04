function retval = R(n,t_i,t_j) #+
  sum = 0;
  for m = 1:n-1
     sum += (1/m)*cos(m*(t_i-t_j));
  end
  retval = (-1/n)*sum + (1/(2*n^2))*cos((t_i-t_j)) - (1/(2*n));
endfunction
