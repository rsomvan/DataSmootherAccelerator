import matplotlib.pyplot as plt

data = []
with open ("data.txt", 'r') as f:

    data = f.readlines()


int_data = []
y_data = []
for i in range(min(len(data), 100)):
    int_data.append(int(data[i]))
    y_data.append(i)

plt.plot(int_data)

plt.show()


