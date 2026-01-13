%% señal
Fs=1024; %Frecuencia de muestreo
Ts=1/Fs; %Periodo de Muestreo
L=512; %muestras
%t=(0:L-1).*Ts; %vector tiempo
t = importdata('time00.xlsx');
s = importdata('data00.xlsx');
subplot(2,1,1),plot(t,s),title('señal')
Y=fft(s);

P1=2.*(abs(Y(1:L/2)/L));
%plot(P1)
f=Fs.*(0:(L/2)-1)./L; % vector de frecuencia
%plot(f,P1)
subplot(2,1,2),plot(f,P1),title('FFT')

%%stem