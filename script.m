#############
## PUNTO B ##
#############
b = tabla_sor(5, 0.0001);
b_refinada = refinar_tabla_sor(5, 0.0001, mejor_w(b));
save tablas_b.mat b b_refinada
graficar(b_refinada, "Omega optimo para n=5 y RTOL=0.001");
print b_refinada.png;
disp("Punto b realizado")


#############
## PUNTO C ##
#############
c1 = tabla_sor(5, 0.00001);
c1_refinada = refinar_tabla_sor(5, 0.00001, mejor_w(c1));
c2 = tabla_sor(5, 0.001);
c2_refinada = refinar_tabla_sor(5, 0.001, mejor_w(c2));
save tablas_c.mat c1 c1_refinada c2 c2_refinada

graficar(c1_refinada, "Omega optimo para n=5 y RTOL=0.00001");
print c1_refinada.png;
graficar(c2_refinada, "Omega optimo para n=5 y RTOL=0.001");
print c2_refinada.png;
disp("Punto c realizado")


#############
## PUNTO D ##
#############
d = tabla_sor(6, 0.0001);
d_refinada = refinar_tabla_sor(6, 0.0001, mejor_w(d));
save tablas_d.mat d d_refinada
graficar(d_refinada, "Omega optimo para n=6 y RTOL=0.0001");
print d_refinada.png;
disp("Punto d realizado")


#############
## PUNTO E ##
#############
e = tabla_sor_corte_x_previo(5, 0.0001);
e_refinada = refinar_tabla_sor_corte_x_previo(5, 0.0001, mejor_w(e));
save tablas_e.mat e e_refinada
graficar(e_refinada, "Omega optimo para n=5 y RTOL=0.0001 con criterio de corte: X anterior");
print e_refinada.png;
