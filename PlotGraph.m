function retval = PlotGraph (t,x,x2,x3)
  
  [x1_t y1_t] = Gamma1([t t(1)]);
  [x2_t y2_t] = Gamma2([t t(1)]);
  
  
  
  
  hold on;
  plot(x1_t,y1_t)
  plot(x2_t,y2_t)
  

  
  
  plot(x(1), x(2), "r.",'MarkerSize', 20)
  text(x(1),x(2)+0.2,"A")
  
  plot(x2(1), x2(2), "r.",'MarkerSize', 20)
  text(x2(1),x2(2)+0.2,"B")
  
  plot(x3(1), x3(2), "r.",'MarkerSize', 20)
  text(x3(1)-0.1,x3(2)+0.2,"C")
  
  text(-1.6,1.1,'\Gamma_1')
  
  text(-1,0.5,'\Gamma_2')
endfunction
