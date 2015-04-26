function graficar(tabla, titulo)
  plot(tabla(:,1), tabla(:,2),
       "linewidth", 3,
       ";Cantidad de iteraciones en funcion del valor de omega;");
  xlabel("Valor de omega");
  ylabel("Cantidad de iteraciones");
  grid minor on;
  title(titulo);
endfunction
