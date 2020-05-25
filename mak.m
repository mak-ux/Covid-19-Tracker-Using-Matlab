function out = mak(t, y,beta)

Death = 0.018;  % death rate in india by 24 March
Pre_infec = 5.2;
f = 1/Pre_infec;
Duration = 14;
r = 1/Duration;
S = y(1);
E= y(2);
I = y(3);

S1 = -beta*I.*S;
E1 = beta*I.*S -  f.*E;
I1 = f*E - r*I;
R1 = r*(1-Death)*I;
D1 = (Death)*r*I;
out = [S1; E1; I1; R1; D1];
end