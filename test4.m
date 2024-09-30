function test4
fprintf("Funkcja sprawdza zachowanie funkcji PowerMethodTrid\n")
fprintf("dla macierzy, która nie ma dominującej wartości własnej\n")
fprintf("początkowym przybliżeniem nie jest wektor własny tej macierzy\n\n")
A = [0 1; 1 0];
fprintf("Macierz, której dominującej wartości własnej będziemy szukać:\n")
disp(A);
pause()
fprintf("Wywołujemy funkcję PowerMethodTrid dla której ustalamy\n")
fprintf("wartość oczekiwanej dokłądności na 10^-10 i sprawdźmy co będzie\n")
fprintf("zwracać w zależności od wartości parametru ustalającego\n")
fprintf("maksymalną ilość iteracji\n\n")
fprintf("Przybliżenie wektora własnego:\n")
x = [2; 5];
disp(x)
pause()
fprintf("dla wywołania PowerMethodTrid(x, A, 10^-10, 1000)\n")
[a, b, i] = PowerMethodTrid(A, x, 10^-10, 1000);
fprintf("dominująca wartość własna: %d\n", a)
fprintf("osiągnięta dokładność: %d\n", b)
fprintf("ilość iteracji: %d\n\n", i)
pause()
fprintf("dla wywołania PowerMethodTrid(x, A, 10^-10, 10000)\n")
[a, b, i] = PowerMethodTrid(A, x, 10^-10, 10000);
fprintf("dominująca wartość własna: %d\n", a)
fprintf("osiągnięta dokładność: %d\n", b)
fprintf("ilość iteracji: %d\n\n", i)
pause()
fprintf("dla wywołania PowerMethodTrid(x, A, 10^-10, 100000)\n")
[a, b, i] = PowerMethodTrid(A, x, 10^-10, 100000);
fprintf("dominująca wartość własna: %d\n", a)
fprintf("osiągnięta dokładność: %d\n", b)
fprintf("ilość iteracji: %d\n\n", i)
pause()
fprintf("dla wywołania PowerMethodTrid(x, A, 10^-10, 1000000)\n")
[a, b, i] = PowerMethodTrid(A, x ,10^-10, 1000000);
fprintf("dominująca wartość własna: %d\n", a)
fprintf("osiągnięta dokładność: %d\n", b)
fprintf("ilość iteracji: %d\n\n", i)