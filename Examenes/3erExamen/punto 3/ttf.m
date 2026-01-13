Fs=16000;
Ts=1/Fs;
L=512;
s_orig = importdata('data00.xlsx');
s_limpia = s_orig(s_orig ~= 0);
s = s_limpia(1:L);
t = (0:L-1).*Ts;
subplot(2,1,1),plot(t,s),title('señal')
Y=fft(s);
P1=2.*(abs(Y(1:L/2)/L));
f=Fs.*(0:(L/2)-1)./L;
subplot(2,1,2),stem(f,P1),title('FFT')