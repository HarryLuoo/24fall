% Constants
hbar = 1; % Reduced Planck's constant
m = 1; % Mass of the particle

% Potential Parameters
a = 1; % Width of the well
V0 = 50; % Depth of the well (arbitrary units)
n = 4; % Quantum number

% Energy of the nth state (approximation)
E = (n * pi / (2 * a))^2 * (hbar^2) / (2 * m * a^2);
if E >= V0
    disp('Chosen energy exceeds the potential depth. Adjust parameters accordingly.');
    E = V0 * 0.9; % Adjust energy to be less than V0
end

% Wave Numbers
k = sqrt(2 * m * E) / hbar;
kappa = sqrt(2 * m * (V0 - E)) / hbar;

% Define the range for x
x_min = -0.5 * a;
x_max = 2.5 * a;
x = linspace(x_min, x_max, 1000);

% Define the wave function psi_4(x)
psi = zeros(size(x));
A_inside = 1; % Amplitude inside the well
A_outside = A_inside * sin(k * a); % Amplitude outside the well

% Inside the well
inside = (x >= 0) & (x <= a);
psi(inside) = A_inside * sin(k * x(inside));

% Outside the well (Right side)
right = x > a;
psi(right) = A_outside * exp(-kappa * (x(right) - a));

% Outside the well (Left side) - symmetric, assume even parity for simplicity
left = x < 0;
psi(left) = A_outside * exp(kappa * (x(left) + a));

% Normalize the wave function
norm = trapz(x, psi.^2);
psi = psi / sqrt(norm);

% Recompute with normalized amplitudes
A_inside = psi(find(inside, 1, 'first')); % Just a placeholder

% Probability distribution
prob_dist = psi.^2;

% Plot the wave function
figure;
plot(x, psi, 'b', 'LineWidth', 1.5);
hold on;
area([0 a], [max(psi) max(psi)], 'FaceColor', [0.9 0.9 0.9], 'EdgeColor', 'none');
xlabel('Position \(x\)', 'Interpreter', 'latex', 'FontSize', 14);
ylabel('Wave Function \(\psi_4(x)\)', 'Interpreter', 'latex', 'FontSize', 14);
title('Wave Function for \(n=4\) State in Finite Square Well', 'Interpreter', 'latex', 'FontSize', 16);
legend({'\(\psi_4(x)\)', 'Potential Well'}, 'Interpreter', 'latex', 'FontSize', 12);
grid on;
xlim([x_min x_max]);
hold off;

% Plot the probability distribution
figure;
plot(x, prob_dist, 'r--', 'LineWidth', 1.5);
hold on;
area([0 a], [max(prob_dist) max(prob_dist)], 'FaceColor', [0.9 0.9 0.9], 'EdgeColor', 'none');
xlabel('Position \(x\)', 'Interpreter', 'latex', 'FontSize', 14);
ylabel('Probability Distribution \(|\psi_4(x)|^2\)', 'Interpreter', 'latex', 'FontSize', 14);
title('Probability Distribution for \(n=4\) State in Finite Square Well', 'Interpreter', 'latex', 'FontSize', 16);
legend({'\(|\psi_4(x)|^2\)', 'Potential Well'}, 'Interpreter', 'latex', 'FontSize', 12);
grid on;
xlim([x_min x_max]);
hold off;