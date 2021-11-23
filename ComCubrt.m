function [z, niter] = ComCubrt(a)
avec = [real(a); imag(a)] ;
zvec = avec ;
z = a ;
for niter = 1:25
Gz = Gcubrt(z, a) ;
Gzvec = [real(Gz); imag(Gz)] ;
jaj = Jcubrt(z) ;
zvec_new = zvec - inv(jaj)*Gzvec ;
z_new = complex(zvec_new(1), zvec_new(2)) ;
tol = 10*eps*max(abs(z_new), 10*eps) ;
if abs(z_new - z) <= tol || abs(Gcubrt(z_new, a)) <= tol
zvec = zvec_new ;
break ;
end
z = z_new ;
zvec = zvec_new ;
end
z = complex(zvec(1), zvec(2)) ;
end