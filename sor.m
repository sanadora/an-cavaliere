function [iter, x] = sor(A, b, w, RTOL)
  printf("omega = %f\n", w);
  n = rows(A);
  x = prev_x = zeros(n,1);
  real_x = ones(n,1);
  iter = 0;
  do
    for i = 1:n;
      sum = 0;
      for j = 1:n;
	if (i != j)
	  sum += A(i,j) * x(j);
	endif
      endfor
      x(i) = (1 - w) * x(i) + (w/A(i,i)) * (b(i) - sum);
    endfor
    abs_error = norm(x - real_x, "inf");
    rel_error = abs_error / norm(real_x, "inf");
    printf("rel_error = %f\n", rel_error);
    prev_x = x;
    iter += 1;
  until ( rel_error < RTOL)
  x = x';
endfunction
	     
	 
	     
