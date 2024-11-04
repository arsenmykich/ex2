function A = GenerateA (n,t) #+

  A = zeros(4*n);
  for ii = 1:2*n
    [x21_1 x22_1] = Gamma2Derivate(t(ii));
    for jj = 1:2*n
        A(ii,jj) = (1/(2*n))*(H12(t(ii),t(jj))) - R(n,t(ii),t(jj))/2; 
        A(ii,jj + 2*n) = (1/(2*n))*H2(t(ii),t(jj)); 
        A(ii + 2*n,jj) = (1/(2*n))*K1(t(ii),t(jj));  
        if(ii == jj)
           A(ii + 2*n,jj + 2*n) = (1/(2*n))*K2(t(ii),t(jj)) - (1/(2*(norm([x21_1 x22_1]))));
        else
           A(ii + 2*n,jj + 2*n) = (1/(2*n))*K2(t(ii),t(jj));
        end
    end
   end
endfunction
