function [x, iter] = sor2(A, b, w, RTOL)
	 n = rows(A);
	 x = prev_x = zeros(n,1);
	 prev_x(n) = 1;
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
	   abs_error = norm(x - prev_x, "inf");
	   rel_error = abs_error / norm(prev_x, "inf");
	   prev_x = x;
	   iter += 1;
	 until ( rel_error < RTOL)
endfunction
	     
