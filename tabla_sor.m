function result = tabla_sor(n, RTOL)
  A = hilb(n);
  b = zeros(n,1);
  for i = 1:n;
    b(i) = sum(A(i,:));
  endfor

  result = zeros(10,2 + n);
  w = 1; i = 1;
  do
    [iter, x] = sor(A, b, w, RTOL);
    result(i,:) = [w, iter, x];
    i += 1;
    w += 0.1;
  until (w>=2)
endfunction
