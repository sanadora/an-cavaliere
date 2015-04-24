tabla_b = calcular_tabla(5, 0.0001);
tabla_b_refinada = refinar(5, 0.0001, obtener_w(tabla_b));
save tablas_b.mat tabla_b tabla_b_refinada

tabla_c1 = calcular_tabla(5, 0.00001);
tabla_c1_refinada = refinar(5, 0.00001, obtener_w(tabla_c1));
tabla_c2 = calcular_tabla(5, 0.001);
tabla_c2_refinada = refinar(5, 0.001, obtener_w(tabla_c2));
save tablas_c.mat tabla_c1 tabla_c1_refinada tabla_c2 tabla_c2_refinada

tabla_d = calcular_tabla(6, 0.0001);
tabla_d_refinada = refinar(6, 0.0001, obtener_w(tabla_d));
save tablas_d.mat tabla_d tabla_d_refinada

tabla_e = calcular2(5, 0.0001);
tabla_e_refinada = refinar(5, 0.0001, obtener_w(tabla_e));
save tablas_e.mat tabla_e tabla_e_refinada

