function F = GenerateF (n,t) #+
  %% F 4n x 1;
  F = zeros(4*n,1);
  for ii = 1:2*n
    F(ii) = F1(t(ii));
    F(ii + 2*n) = F2(t(ii));
  end
endfunction
