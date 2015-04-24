tabla_b = calcular_tabla(3, 0.01);
disp(tabla_b);
w_optimo = obtener_w(tabla_b);
disp(w_optimo);
tabla_b_refinada = refinar(3, 0.01, w_optimo);
disp(tabla_b_refinada);
