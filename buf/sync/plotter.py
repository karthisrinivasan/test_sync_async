import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

df = pd.read_csv('_xyce.sp.csv')

# print(df.head())

plt.figure(figsize=(10, 6))

ax1 = plt.subplot(1,1,1)
# input req
ax1.plot(df['TIME'], df['V(BUFFER_AOUT__VALID)'], linestyle='-', color='b') 
ax1.plot(df['TIME'], df['V(BUFFER_ACLK)'], linestyle='-', color='r')
ax1.plot(df['TIME'], df['V(BUFFER_AOUT__READY)'], linestyle='-', color='g')
ax1.grid(visible=True,which='both')


# plt.title('Input and output requests')
plt.xlabel('time')
plt.ylabel('voltage')

plt.tight_layout()
plt.show()