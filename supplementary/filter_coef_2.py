from __future__ import division
import matplotlib.pyplot as plt
import numpy as np
 
# code taken from -> https://tomroelandts.com/articles/how-to-create-a-simple-low-pass-filter

fc = 0.01  # Cutoff frequency as a fraction of the sampling rate (in (0, 0.5)).
b = 0.020  # Transition band, as a fraction of the sampling rate (in (0, 0.5)).
N = int(np.ceil((4 / b)))
if not N % 2: N += 1  # Make sure that N is odd.
n = np.arange(N)
 
# Compute sinc filter.
h = np.sinc(2 * fc * (n - (N - 1) / 2))
 
# Compute Blackman window.
w = 0.42 - 0.5 * np.cos(2 * np.pi * n / (N - 1)) + \
    0.08 * np.cos(4 * np.pi * n / (N - 1))
 

# Multiply sinc filter by window.
h = h * w
 
# Normalize to get unity gain.
h = h / np.sum(h)

x = np.arange(N)

output = 0
for i, sample in enumerate(h):
    print(f"{i-12} -> {int(sample * (1 << 15))}")
    if i != 0 and i != 5 and i != 15 and i != 20:
        output += (60000*int(sample * (1 << 15))) / 32768
    x[i] = i


print(output)

# plt.scatter(x, h)
# plt.show()