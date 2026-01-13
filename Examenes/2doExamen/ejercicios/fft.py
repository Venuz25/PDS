import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

t = pd.read_excel('time00.xlsx', header=None).values.flatten()
x = pd.read_excel('data00.xlsx', header=None).values.flatten()

L = 512
t = t[:L]
x = x[:L]

Fs = 1024

Y = np.fft.fft(x)
P1 = 2 * np.abs(Y[:L//2]) / L

f = Fs * np.arange(0, L//2) / L

plt.figure(figsize=(10, 6))

plt.subplot(2, 1, 1)
plt.plot(t, x)
plt.title("Señal en el tiempo")
plt.xlabel("Tiempo (s)")
plt.ylabel("Amplitud")

plt.subplot(2, 1, 2)
plt.stem(f, P1, basefmt=" ")
plt.title("FFT")
plt.xlabel("Frecuencia (Hz)")
plt.ylabel("Magnitud")

plt.tight_layout()
plt.show()