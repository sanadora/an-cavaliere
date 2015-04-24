function result = refinar(n, RTOL, w)
	A = hilb(n);
	b = zeros(n,1);
	for i = 1:n;
		b(i) = sum(A(i,:));
	endfor
	w = w - 0.1;
	wf = w + 0.2;
	result = zeros(20,2);
	i = 1;
	do
		[x, iter] = sor(A, b, w, RTOL);
		result(i,:) = [w, iter];
		i += 1;
		w += 0.01;
	until (w>=wf)
endfunction


