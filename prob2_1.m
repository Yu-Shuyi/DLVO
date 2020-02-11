% problem 2
% different concentration
C = [0.001 0.01 0.1];
% different gama1 * gama2
Y = [0.301 0.282 0.319];
% different inverse of Debye layer thickness(m^-1)
K = [1.039e8 3.287e8 1.039e9];

hold on
for i = 1:3
    n = C(i) * 1000;
    k = K(i);
    y1 = Y(i);
    y2 = Y(i);
    h = 0:1e-10:500e-10;
    a = Va(h);
    b = 128 * Vel(h, n, k, y1, y2);
    c = Vt(a, b);
    plot(h * 1e10, c);
end

Y = [0.306 0.297 0.332];
K = [1.8e8 5.693e8 1.8e9];

hold on
for i = 1:3
    n = C(i) * 1000;
    k = K(i);
    y1 = Y(i);
    y2 = Y(i);
    h = 0:1e-10:500e-10;
    a = Va(h);
    b = 384 * Vel(h, n, k, y1, y2);
    c = Vt(a, b);
    plot(h * 1e10, c, 'LineStyle', '--');
end

axis([0 500 -30 30]);
xlabel('Separation distance between NPs (unit: A)');
ylabel('Total energy between NPs (unit: k_BT)');
legend('0.001 mol/L KCl(aq)', '0.01 mol/L KCl(aq)','0.1 mol/L KCl(aq)','0.001 mol/L CaCl2(aq)','0.01 mol/L CaCl2(aq)','0.1 mol/L CaCl2(aq)');