function test6
fprintf("Funkcja sprawdzająca zależności pomiędzy wartością " + ...
    "błędu metody potęgowej\n")
fprintf("w kolejnych iteracjach metody a wartościami" + ...
    " własnymi macierzy. Błąd obliczamy ze wzoru\n")
fprintf("sqrt(sum((abs((x - l*xl))).^2))/abs(l) gdzie x to przybliżenie\n")
fprintf("wektora własnego, xl to przybliżenie znormalizowanego \n" + ...
    "wektora własnego z ")
fprintf("poprzedniej iteracji metody a l to przyblizenie" + ...
    " wartości własnej\n")
fprintf("w poprzedniej iteracji\n\n");
pause()
fprintf("Test przeprowadzamy dla macierzy\n\n")

A = diag([5 4 3 3 2]);
disp(A);
x = rand(5, 1);
pause()
fprintf("Wektor początkowy:\n\n")
disp(x);
errpl = zeros(1, 1000);
for i = 1:1000
   [~, err, a] = PowerMethodTrid(A, x, 10^-15, i);
   if(a ~= i)
       break
   end
   errpl(i) = err;
end
semilogy(1:i, errpl(1:i));
xlabel("n");
fprintf("Wykres przedstawia zależność wartości błędu metody potęgowej\n")
fprintf("w zależności od tego, dla której iteracji obliczamy błąd.\n")
fprintf("Zobaczmy jak prezentuje się ten wykres na tle wykresu funkcji\n")
fprintf("f(n) = (l2/l1)^n gdzie l1 to wartość " + ...
    "dominującej wartości własnej\n")
fprintf("a l2 to wartość drugiej największej co" + ...
    " do modułu wartości własnej\n");
pause()
hold on
semilogy(1:i, (4/5).^(1:i));
legend("err", "f(n)");

end