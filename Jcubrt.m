function jaj = Jcubrt(z)
x=real(z);
y=imag(z);
j11=3*x^2-3*y^2;
j12=-6*x*y;
j21=6*x*y;
j22=3*x^2-3*y^2;
jaj=[j11,j12;j21,j22];
end