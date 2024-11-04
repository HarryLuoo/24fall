import numpy as np
import matplotlib.pyplot as plt

# Constants
k_B = 8.617e-5  # eV/K
E_f = 0  # Define Fermi energy as 0 eV for reference
delta_E = 0.2  # eV

# Energy range
E = np.linspace(E_f - delta_E, E_f + delta_E, 400)

# Temperatures
temperatures = [4, 77, 300]  # in K

# Plotting
plt.figure(figsize=(8,6))
for T in temperatures:
    f_E = 1 / (1 + np.exp((E - E_f)/(k_B * T)))
    plt.plot(E, f_E, label=f'{T} K')

plt.title('Fermi Distribution Function at Different Temperatures')
plt.xlabel('Energy (eV)')
plt.ylabel('f(E)')
plt.legend()
plt.grid(True)
plt.show()