import numpy as np
import matplotlib.pyplot as plt

def u(x, t, L=1, k=1):
    return (2 * np.sin(np.pi * x / L) * np.exp(-(np.pi/L)**2 * k * t) - 
            np.sin(5 * np.pi * x / L) * np.exp(-(5*np.pi/L)**2 * k * t))

# Parameters
L = 1
k = 1
times = [0.001, 0.002, 0.005, 0.02, 0.05]

# Create plot
plt.figure(figsize=(10, 6))

# Line styles and markers for B/W distinguishability
line_styles = ['-', '--', '-.', ':', '-']
markers = ['o', 's', '^', 'v', 'D']

# Plot for each time point
x = np.linspace(0, L, 200)
for i, t in enumerate(times):
    plt.plot(x, u(x, t), 
             label=f't = {t}', 
             linestyle=line_styles[i], 
             marker=markers[i], 
             markevery=20,  # Reduce marker density
             linewidth=2, 
             markersize=6)

plt.title('Heat Equation Solution $u(x,t)$\n$k=1, L=1$', fontsize=14)
plt.xlabel('$x$', fontsize=12)
plt.ylabel('$u(x,t)$', fontsize=12)
plt.legend(title='Time', loc='best')
plt.grid(True, linestyle='--', linewidth=0.5)

# Ensure B/W friendly
plt.gray()

plt.tight_layout()
plt.savefig('heat_equation_solution.png', dpi=300, bbox_inches='tight')
plt.show()