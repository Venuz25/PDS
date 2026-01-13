import numpy as np
import pandas as pd
from openpyxl import Workbook
wb = Workbook
import matplotlib.pyplot as plt


xcsv = np.genfromtxt('x00csv.csv',)
xxlsx = pd.read_excel('x00.xlsx',)
ycsv = np.genfromtxt('y00csv.csv',)
yxlsx = pd.read_excel('y00.xlsx',)



plt.subplot(2,2,2)
plt.plot(xxlsx,'.-')
plt.xlabel('Tiempo (n)', fontsize='14')
plt.ylabel('Amplitud de x(t)', fontsize='14')


plt.subplot(2,2,1)
plt.plot(yxlsx,'.-')
plt.xlabel('Tiempo (n)', fontsize='14')
plt.ylabel('Amplitud y(t)', fontsize='14')


plt.subplot(2,1,2)
y= np.correlate(xcsv, ycsv, mode='full')
plt.plot(y)
plt.xlabel('time lag')
plt.ylabel('correlation')


plt.show()