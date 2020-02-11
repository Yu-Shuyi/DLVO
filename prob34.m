% Problem 3

% For KCl:
disp("For KCl:");
C = [0.001 0.01 0.1];
Y = [0.301 0.282 0.319];
K = [1.039e8 3.287e8 1.039e9];
W = [0 0 0];
Wi = [0 0 0];

for i = 1:3
    n = C(i) * 1000;
    k = K(i);
    y1 = Y(i);
    y2 = Y(i);
    a = @(h) Va(h);
    b = @(h) 128 * Vel(h, n, k, y1, y2);
    c = @(h) a(h) + b(h);
    W1 =  @(h) Lambda(h) .* exp(c(h) ./ 4.11e-21) ./ (50e-9 .* (2 + h / 50e9).^2);
    W2 =  @(h) Lambda(h) .* exp(a(h) ./ 4.11e-21) ./ (50e-9 .* (2 + h / 50e9).^2);
    W3 = quadgk(W1, 1e-10, 100e-9);
    W4 = quadgk(W2, 1e-10, 100e-9);
    W(i) = W3 .* (1 ./ W4);
    Wi(i) = 1 ./ W(i);
    disp(W(i));
    disp(Wi(i));
end


% For CaCl2:
disp("For CaCl2:");
Y = [0.306 0.297 0.332];
K = [1.8e8 5.693e8 1.8e9];

for i = 1:3
    n = C(i) * 1000;
    k = K(i);
    y1 = Y(i);
    y2 = Y(i);
    a = @(h) Va(h);
    b = @(h) 128 * Vel(h, n, k, y1, y2);
    c = @(h) a(h) + b(h);
    W1 =  @(h) Lambda(h) .* exp(c(h) ./ 4.11e-21) ./ (50e-9 .* (2 + h / 50e9).^2);
    W2 =  @(h) Lambda(h) .* exp(a(h) ./ 4.11e-21) ./ (50e-9 .* (2 + h / 50e9).^2);
    W3 = quadgk(W1, 1e-10, 100e-9);
    W4 = quadgk(W2, 1e-10, 100e-9);
    W(i) = W3 .* (1 ./ W4);
    Wi(i) = 1 ./ W(i);
    disp(W(i));
    disp(Wi(i));
end


% Prob4:
W = [7.6266e+08, 2.2623, 1.0001, 1.3780, 1.0010, 1.0000];
COLOR =  ['r','y','b','g','m','k']; 

hold on
for i = 1:6
    w = W(i);
    t = 0:1:180;
    R = r(w, t .* 60) ./ 1e-9;
    plot(t, R, 'color',COLOR(i));
end

axis([0 180 50 600]);
xlabel('Time (Unit: min)');
ylabel('Radius of NPs (Unit: nm)');
legend('0.001 mol/L KCl(aq)', '0.01 mol/L KCl(aq)','0.1 mol/L KCl(aq)','0.001 mol/L CaCl2(aq)', '0.01 mol/L CaCl2(aq)','0.1 mol/L CaCl2(aq)');