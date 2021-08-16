% phase it to get cosine
function sine = makeSin(rad,A,freq,phase)

sine = A*sin((2*pi*rad*freq) + phase);

end
