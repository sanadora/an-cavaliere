function w = obtener_w(tabla)
	 iter_ind = find(tabla(:,2)== min(tabla(:,2)));
	 w = tabla(iter_ind,1);
endfunction
