t = 0:0.01:10;

n = length(t);

re = zeros(1,n);
im = zeros(1,n);

chance = 0.99;
for i=1:length(re)
    if(rand > chance)
        re(i) = rand*100*(-1)^(round(rand*10));
    end
end

for i=1:length(im)
    if(rand > chance)
        im(i) = rand*100*(-1)^(round(rand*10))*1i;
    end
end

comNums = re + im;
comNums(end) = 50-50i;

row = 3;
col = 1;
o = 1;

subplot(row,col,o);
cla
o = o + 1;
plot(t,real(comNums));

subplot(row,col,o);
cla
o = o + 1;
plot(t,imag(comNums));

subplot(row,col,o);
cla
o = o + 1;
plot(t,abs(comNums));