import matplotlib.pyplot as plt

data_1 = []
with open ("sinc_177_1khz/sine.txt", 'r') as f:

    data_1 = f.readlines()

data_2 = []
# with open ("data.txt", 'r') as f:

#     data_2 = f.readlines()

int_data = []
y_data = []
for i in range(min(len(data_1), 1000)):
    int_data.append(int(data_1[i]))
    y_data.append(i)

int_data_2 = []
y_data_2 = []
for i in range(min(len(data_2), 1000)):
    int_data_2.append(int(data_2[i]))
    y_data_2.append(i)
plt.plot(int_data)
# plt.plot(int_data_2)

plt.savefig("sinc_177_1khz/graphs/sine.png")


