function test5
fprintf("Funkcja sprawdza wartości zwracane przez funkcję\n")
fprintf("PowerMethodTrid, dla parametru wejściowego reprezentującego\n")
fprintf("przybliżenie wektora własnego, równego wektorowi własnemu\n")
pause()
A = [1 1 0; 1 1 1; 0 1 1];
fprintf("Macierz A którą testujemy:\n")
disp(A);
x1 = [-1; 0; 1];
x2 = [1; -sqrt(2); 1];
x3 = [1; sqrt(2); 1];
pause()
fprintf("dla początkowego przybliżenia x1 równego:\n\n")
disp(x1);
[a, b, i] = PowerMethodTrid(A, x1, 10^-10, 100000);
fprintf("\n\ni dla wywołania PowerMethodTrid(x1, A, 10^-10, 100000)\n");
fprintf("dominująca wartość własna: %d\n", a)
fprintf("osiągnięta dokładność: %d\n", b)
fprintf("ilość iteracji: %d\n\n", i)
pause()
fprintf("dla początkowego przybliżenia x2 równego:\n\n")
disp(x2);
[a, b, i] = PowerMethodTrid(A, x2, 10^-10, 100000);
fprintf("\n\ni dla wywołania PowerMethodTrid(x1, A, 10^-10, 100000)\n");
fprintf("dominująca wartość własna: %d\n", a)
fprintf("osiągnięta dokładność: %d\n", b)
fprintf("ilość iteracji: %d\n\n", i)
pause();
fprintf("dla początkowego przybliżenia x3 równego:\n\n")
disp(x3);
[a, b, i] = PowerMethodTrid(A, x3, 10^-10, 100000);
fprintf("\n\ni dla wywołania PowerMethodTrid(x1, A, 10^-10, 100000)\n");
fprintf("dominująca wartość własna: %d\n", a)
fprintf("osiągnięta dokładność: %d\n", b)
fprintf("ilość iteracji: %d\n\n", i)
end
