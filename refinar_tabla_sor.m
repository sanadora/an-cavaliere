function result = refinar_tabla_sor(n, RTOL, w)
  A = hilb(n);
  b = zeros(n,1);
  for i = 1:n;
    b(i) = sum(A(i,:));
  endfor
  w = w - 0.1;
  wf = w + 0.2;
  result = zeros(20, 2 + n);
  i = 1;
  do
    [iter, x] = sor(A, b, w, RTOL);
    result(i,:) = [w, iter, x];
    i += 1;
    w += 0.01;
  until (w>=wf)
endfunction


