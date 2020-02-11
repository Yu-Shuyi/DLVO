% Va and Vel under 0.001 mol/L KCL
hold on
n = 0.001 * 1000;
k = 1.039e8;
y1 = 0.301;
y2 = 0.301;
h = 0:1e-10:500e-10;
a = Va(h);
b = 128 * Vel(h, n, k, y1, y2);
c = Vt(a, b);
plot(h * 1e10, a / 4.11e-21, 'LineStyle', '--');
plot(h * 1e10, b / 4.11e-21, 'LineStyle', '-.');
plot(h * 1e10, c);
axis([0 500 -70 70]);
xlabel('Distance between NPs (Unit: A)'); ylabel('Energy between NPs (Unit: k_BT)'); legend('Van der Waals Energy','Electrostatic Repulsive Energy','Total Energy'); 
