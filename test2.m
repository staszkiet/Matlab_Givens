function test2
fprintf("Funkcja sprawdza wyniki zwracane przez funkcję " + ...
    "P2Z21_SZA_Eigenvalue\n")
fprintf("dla różnych macierzy symetrycznych, piędiodiagonalnych.\n")
fprintf("oraz dla docelowej dokładności równej 10^-13 i maksymalnej\n")
fprintf("ilości iteracji równej 1000. Wektor początkowy jest losowany\n")
fprintf("przy pomocy funkcji rand.\n")
pause()
x1 = [1;1;1;1;1];
x3 = [3;3;3];
A = diag(x1) + diag(x3, 2) + diag(x3, -2);
fprintf("test dla macierzy:\n\n")
disp(A);
fprintf("dokładna wartość dominującej wartości własnej" + ...
    ": %.16f\n", 3*sqrt(2) + 1);
fprintf("wartości zwrócone przez funkcję:\n")
[lambda, err, it] = P2Z21_SZA_Eigenvalue(rand(5, 1), A, 10^-13, 1000);
fprintf("lambda: %.16f\n", lambda);
fprintf("err: %.16f\n", err);
fprintf("it: %d\n", it);
pause()
x1 = [1;1;1;1];
x3 = [1;1];
x2 = [2;2;2];
A = diag(x1) + diag(x3, 2) + diag(x3, -2) + diag(x2, 1) + diag(x2, -1);
fprintf("test dla macierzy:\n\n")
disp(A);
fprintf("dokładna wartość dominującej wartości własnej" + ...
    ": %.16f\n", sqrt(10) + 2);
fprintf("wartości zwrócone przez funkcję:\n")
[lambda, err, it] = P2Z21_SZA_Eigenvalue(rand(4, 1), A, 10^-13, 1000);
fprintf("lambda: %.16f\n", lambda);
fprintf("err: %.16f\n", err);
fprintf("it: %d\n", it);
pause()
x1 = 1:10;
A = diag(x1);
fprintf("test dla macierzy:\n\n")
disp(A);
fprintf("dokładna wartość dominującej wartości własnej" + ...
    ": %.16f\n", 10);
fprintf("wartości zwrócone przez funkcję:\n")
[lambda, err, it] = P2Z21_SZA_Eigenvalue(rand(10, 1), A, 10^-13, 1000);
fprintf("lambda: %.16f\n", lambda);
fprintf("err: %.16f\n", err);
fprintf("it: %d\n", it);
end