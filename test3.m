function test3
fprintf("Funkcja sprawdza czasy wykonania iteracji metody potęgowej\n")
fprintf("dla macierzy różnych rozmiarów. Wartość czasu jest średnią\n")
fprintf("arytmetyczną z 1000 pomiarów dla danej wielkości macierzy\n\n")
n = 1000:1000:50000;
t = zeros(size(n));
for i = 1:length(n)
    x1 = ones(n(i), 1);
    x = ones(n(i), 1);
    x2 = ones(n(i)-1, 1);
    tEnd = 0;
    for j = 1:1000
        tic;
        PowerMethodIt(x, x1, x2);
        tEnd = toc + tEnd;
    end
    t(i) = tEnd/1000;
end
hold off
plot(n, t)
hold on
M = ones(length(t), 2);
M(:, 1) = n;
G = M'*M;
d = M'*t';
a = G\d;
plot(n, a(1).*n + a(2));
fprintf("Rysunek przedstawia na niebiesko wykres średnich wartości\n")
fprintf("czasu iteracji w zależności od rozmiaru macierzy. Pomarańczowy\n")
fprintf("wykres to funkcja liniowa wyznaczona przy pomocy aproksymacji\n")
fprintf("średniokwadratowej na wartościach czasów")