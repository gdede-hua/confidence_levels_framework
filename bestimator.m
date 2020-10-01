function solb=bestimator(ind,a)

syms b;

if ind==-8 || ind==8
    f=a + a*exp(-b) + a*exp(-b)^2 + a*exp(-b)^3 + a*exp(-b)^4 + a*exp(-b)^5 + a*exp(-b)^6 + a*exp(-b)^7 + a*exp(-b)^8 + a*exp(-b)^9 + a*exp(-b)^10 + a*exp(-b)^11 + a*exp(-b)^12 + a*exp(-b)^13 + a*exp(-b)^14 + a*exp(-b)^15 + a*exp(-b)^16==1;
elseif ind==-7 || ind==7
    f=2*a*exp(-b) + a + a*exp(-b)^2 + a*exp(-b)^3 + a*exp(-b)^4 + a*exp(-b)^5 + a*exp(-b)^6 + a*exp(-b)^7 + a*exp(-b)^8 + a*exp(-b)^9 + a*exp(-b)^10 + a*exp(-b)^11 + a*exp(-b)^12 + a*exp(-b)^13 + a*exp(-b)^14 + a*exp(-b)^15==1;
elseif ind==-6 || ind==6
    f=2*a*exp(-b) + a + 2*a*exp(-b)^2 + a*exp(-b)^3 + a*exp(-b)^4 + a*exp(-b)^5 + a*exp(-b)^6 + a*exp(-b)^7 + a*exp(-b)^8 + a*exp(-b)^9 + a*exp(-b)^10 + a*exp(-b)^11 + a*exp(-b)^12 + a*exp(-b)^13 + a*exp(-b)^14==1;
elseif ind==-5 || ind==5
    f=2*a*exp(-b) + a + 2*a*exp(-b)^2 + 2*a*exp(-b)^3 + a*exp(-b)^4 + a*exp(-b)^5 + a*exp(-b)^6 + a*exp(-b)^7 + a*exp(-b)^8 + a*exp(-b)^9 + a*exp(-b)^10 + a*exp(-b)^11 + a*exp(-b)^12 + a*exp(-b)^13==1;
elseif ind==-4 || ind==4
    f=2*a*exp(-b) + a + 2*a*exp(-b)^2 + 2*a*exp(-b)^3 + 2*a*exp(-b)^4 + a*exp(-b)^5 + a*exp(-b)^6 + a*exp(-b)^7 + a*exp(-b)^8 + a*exp(-b)^9 + a*exp(-b)^10 + a*exp(-b)^11 + a*exp(-b)^12==1;
elseif ind==-3 || ind==3
    f=2*a*exp(-b) + a + 2*a*exp(-b)^2 + 2*a*exp(-b)^3 + 2*a*exp(-b)^4 + 2*a*exp(-b)^5 + a*exp(-b)^6 + a*exp(-b)^7 + a*exp(-b)^8 + a*exp(-b)^9 + a*exp(-b)^10 + a*exp(-b)^11==1;
elseif ind==-2 || ind==2
    f=2*a*exp(-b) + a + 2*a*exp(-b)^2 + 2*a*exp(-b)^3 + 2*a*exp(-b)^4 + 2*a*exp(-b)^5 + 2*a*exp(-b)^6 + a*exp(-b)^7 + a*exp(-b)^8 + a*exp(-b)^9 + a*exp(-b)^10==1;
elseif ind==-1 || ind==1
    f=2*a*exp(-b) + a + 2*a*exp(-b)^2 + 2*a*exp(-b)^3 + 2*a*exp(-b)^4 + 2*a*exp(-b)^5 + 2*a*exp(-b)^6 + 2*a*exp(-b)^7 + 2*a*exp(-b)^8 + a*exp(-b)^9==1;
elseif ind==0
    f=2*a*exp(-b) + a + 2*a*exp(-b)^2 + 2*a*exp(-b)^3 + 2*a*exp(-b)^4 + 2*a*exp(-b)^5 + 2*a*exp(-b)^6 + 2*a*exp(-b)^7 + 2*a*exp(-b)^8==1;
end

solb=solve(f,'b');

end %eof function

