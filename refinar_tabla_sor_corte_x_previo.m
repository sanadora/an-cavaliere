function result = refinar2(n, RTOL, w)
  A = hilb(n);
  b = zeros(n,1);
  for i = 1:n;
    b(i) = sum(A(i,:));
  endfor
  w_start = w(1) - 0.1;
  w_end =  w(rows(w)) + 0.1;
  step = 0.01;
  result = zeros((w_end - w_start)/step, 2 + n);
  i = 1;
  w = w_start;
  do
    [iter, x] = sor2(A, b, w, RTOL);
    result(i,:) = [w, iter, x];
    i += 1;
    w += step;
  until (w >= w_end)
endfunction
