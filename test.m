e = calcular2(3, 0.01);
e_refinada = refinar2(3, 0.01, mejor_w(e));
save tablas_b.mat e e_refinada
graficar(e_refinada, "Omega optimo para n=3, RTOL=0.01 y corte con X_PREV");
print e_refinada.png;
disp("Punto e realizado")
