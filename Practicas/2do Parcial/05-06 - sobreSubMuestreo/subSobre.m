data = readmatrix('data00.xlsx');

t = data(:, 1);              % Tiempo
senal_original = data(:, 2); % Señal Original
senal_sobre = data(:, 3);    % Sobremuestreo
senal_sub = data(:, 4);      % Submuestreo

figure(1);
clf; 
hold on;

plot(t, senal_original, 'b', 'LineWidth', 2, 'DisplayName', 'Original');
plot(t, senal_sub, 'r--', 'LineWidth', 1.5, 'DisplayName', 'Submuestreo');
plot(t, senal_sobre, 'g:', 'LineWidth', 1.5, 'DisplayName', 'Sobremuestreo');

title('Comparación de Señales (MATLAB)');
xlabel('Tiempo (s)');
ylabel('Amplitud');
legend('show'); 
grid on;
hold off;

figure(2);
clf;

subplot(3,1,1);
plot(t, senal_original, 'b', 'LineWidth', 1.5);
title('Señal Original');
grid on;
ylabel('Amplitud');

subplot(3,1,2);
plot(t, senal_sobre, 'g', 'LineWidth', 1.5);
title('Sobremuestreo');
grid on;
ylabel('Amplitud');

subplot(3,1,3);
plot(t, senal_sub, 'r', 'LineWidth', 1.5);
title('Submuestreo');
grid on;
xlabel('Tiempo (s)');
ylabel('Amplitud');