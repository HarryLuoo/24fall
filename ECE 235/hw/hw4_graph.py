import numpy as np
import matplotlib.pyplot as plt

# Define the well width
a = 1

# Define the range for x
x_min = -1
x_max = 2
x = np.linspace(x_min, x_max, 1000)

# Define the wave function psi_4(x)
def psi_4(x, a):
    """
    Wave function for the n=4 state in a finite square well.

    Parameters:
    x (array): Position array.
    a (float): Width of the well.

    Returns:
    array: Wave function values.
    """
    psi = np.zeros_like(x)
    # Inside the well
    inside = (x >= 0) & (x <= a)
    psi[inside] = np.sin(4 * np.pi * x[inside] / a)
    return psi

# Define the probability distribution |psi_4(x)|^2
def probability_distribution(psi):
    """
    Probability distribution corresponding to the wave function.

    Parameters:
    psi (array): Wave function values.

    Returns:
    array: Probability distribution values.
    """
    return psi**2

# Compute the wave function and probability distribution
psi = psi_4(x, a)
prob_dist = probability_distribution(psi)

# Create the plot for the wave function
plt.figure(figsize=(10, 4))
plt.plot(x, psi, color='blue', label='$\\psi_4(x)$')
plt.axvspan(0, a, color='lightgray', alpha=0.3, label='Potential Well')
plt.xlabel('Position \(x\)', fontsize=12)
plt.ylabel('Wave Function \(\\psi_4(x)\)', fontsize=12)
plt.title('Wave Function for \(n=4\) State in Finite Square Well', fontsize=14)
plt.legend(loc='upper right', fontsize=10)
plt.grid(True, which='both', linestyle='--', linewidth=0.5, alpha=0.7)
plt.xlim(x_min, x_max)
plt.tight_layout()
plt.show()

# Create the plot for the probability distribution
plt.figure(figsize=(10, 4))
plt.plot(x, prob_dist, color='red', linestyle='--', label='$|\\psi_4(x)|^2$')
plt.axvspan(0, a, color='lightgray', alpha=0.3, label='Potential Well')
plt.xlabel('Position \(x\)', fontsize=12)
plt.ylabel('Probability Distribution $|\\psi_4(x)|^2$', fontsize=12)
plt.title('Probability Distribution for \(n=4\) State in Finite Square Well', fontsize=14)
plt.legend(loc='upper right', fontsize=10)
plt.grid(True, which='both', linestyle='--', linewidth=0.5, alpha=0.7)
plt.xlim(x_min, x_max)
plt.tight_layout()
plt.show()