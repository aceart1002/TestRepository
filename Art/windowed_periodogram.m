%Book function:[s,as,phs]=windowed_periodogram(x,w,L)
function[s,as,phs]=windowed_periodogram(x,w,L)
%w=name(length),w is in column form
%(see also Appendix 1
%name=hamming,kaiser,hann,rectwin,
%bartlett,tukeywin,blackman,gausswin,nattallwin,
%triang,blackmanharris);
%L=desired number of points (bins) of the spectrum;
%x=data in row form;s=complex form of its DFT;
xw=x.*w';
for m=1:L
n=1:length(x);
p1 = -1j*(m-1)*(2*pi/L);

p2 = p1*n;

p3 = xw.*exp(p2);
s(m)=sum(p3);
end;%the for loop finds the set of complex numbers
%of the summation for each m;



as=((abs(s)).^2/length(x))/norm(w);
%as=amplitude value of the periodogram;
phs=(atan(imag(s)./real(s))/length(x))/norm(w);
%phase of the periodogram;