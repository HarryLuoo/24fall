import numpy as np
import matplotlib.pyplot as plt

# Define the finite square well parameters
L = 1.0  # Width of the well (from -L/2 to L/2)
n = 4    # Quantum number

# Define the spatial domain
x_inside = np.linspace(-L/2, L/2, 1000)
x_outside_left = np.linspace(-1.5*L, -L/2, 500)   # Extended to -1.5L for clearer decay
x_outside_right = np.linspace(L/2, 1.5*L, 500)    # Extended to 1.5L for clearer decay

# Wave function inside the well (sinusoidal)
k = n * np.pi / L  # Wave number
psi_inside = np.sin(k * (x_inside + L/2))

# Wave function outside the well (exponentially decaying)
# Adjusted the decay constant alpha to be smaller for slower decay
alpha = 0.3 / L  # Decay constant (smaller value for slower decay)

# Ensure continuity at the boundaries by matching the wave function values
psi_outside_left = psi_inside[0] * np.exp(alpha * (x_outside_left + L/2))
psi_outside_right = psi_inside[-1] * np.exp(-alpha * (x_outside_right - L/2))

# Concatenate all regions
x = np.concatenate((x_outside_left, x_inside, x_outside_right))
psi = np.concatenate((psi_outside_left, psi_inside, psi_outside_right))

# Probability distribution
probability = psi**2

# Plot Wave Function
plt.figure(figsize=(12, 6))
plt.plot(x, psi, label=r'$$\psi_{n=4}(x)$$', color='blue')
plt.title('Wave Function for $$n=4$$ State in Finite Square Well')
plt.xlabel('$$x$$')
plt.ylabel('$$\psi(x)$$')
plt.axvline(-L/2, color='k', linestyle='--', label='Well Boundaries')
plt.axvline(L/2, color='k', linestyle='--')
plt.legend()
plt.grid(True)
# Adjust y-limits to accommodate the slower decay
plt.ylim(-1.1 * np.max(np.abs(psi_inside)) * 1.2, 1.1 * np.max(np.abs(psi_inside)) * 1.2)
plt.show()

# Plot Probability Distribution
plt.figure(figsize=(12, 6))
plt.plot(x, probability, label=r'$$|\psi_{n=4}(x)|^2$$', color='red')
plt.title('Probability Distribution for $$n=4$$ State in Finite Square Well')
plt.xlabel('$$x$$')
plt.ylabel('$$|\psi(x)|^2$$')
plt.axvline(-L/2, color='k', linestyle='--', label='Well Boundaries')
plt.axvline(L/2, color='k', linestyle='--')
plt.legend()
plt.grid(True)
# Adjust y-limits to accommodate the probability distribution
plt.ylim(0, 1.1 * np.max(probability) * 1.2)
plt.show()