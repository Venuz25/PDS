%% señal
Fs=128; %Frecuencia de muestreo
Ts=1/Fs; %Periodo de Muestreo
L=32; %muestras
t = importdata('time00.xlsx');
x = importdata('x00.xlsx');
y = importdata('y00.xlsx');
subplot(2,2,2),plot(t,y),title('señales y')
subplot(2,2,1),plot(t,x),title('señales x')

r=xcorr(x,y)
subplot(2,1,2),plot(r),title('Correlacion')