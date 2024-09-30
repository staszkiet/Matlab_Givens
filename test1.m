function test1

fprintf("Testowanie poprawności zamiany macierzy pięciodiagonalnej do\n")
fprintf("do postaci trójdiagonalnej przy pomocy obrotów Givensa.\n")
fprintf("Sprawdzamy, czy wartości własne macierzy są takie same przed\n")
fprintf("i po transformacji. Do wyznaczenia wartości własnych użyto\n")
fprintf("funkcji eig korzystającej z metody QR\n")

pause()
x1 = [1 2 3 4 5];
x2 = [3 4 5 6];
x3 = [6 7 8];
A = diag(x1) + diag(x2, 1) + diag(x2, -1) + diag(x3, 2) + diag(x3, -2);

fprintf("Macierz którą transformujemy:\n");
disp(A);
fprintf("Wartości własne tej macierzy\n")
disp(sort(eig(A)));
pause()
fprintf("Macierz po transformacji:\n")
disp(transform(A));
fprintf("Wartości własne macierzy po transformacji:\n")
disp(sort(eig(transform(A))));

pause()

A = 6;
fprintf("Macierz którą transformujemy:\n");
disp(A);
fprintf("Wartości własne tej macierzy\n")
disp(sort(eig(A)));
pause()
fprintf("Macierz po transformacji:\n")
disp(transform(A));
fprintf("Wartości własne macierzy po transformacji:\n")
disp(sort(eig(transform(A))));
pause();
x1 = [2 11 6 4 7 10 3 5 20 1 6];
x2 = [4 6 8 17 4 1 0 0 5 2];
x3 = [2 8 10 3 8 9 20 4 6];
A = diag(x1) + diag(x2, 1) + diag(x2, -1) + diag(x3, 2) + diag(x3, -2);
fprintf("Macierz którą transformujemy:\n");
disp(A);
pause()
fprintf("Wartości własne tej macierzy\n")
disp(sort(eig(A)));
pause()
fprintf("Macierz po transformacji:\n")
disp(transform(A));
pause()
fprintf("Wartości własne macierzy po transformacji:\n")
disp(sort(eig(transform(A))));
pause()

A = eye(7);
fprintf("Macierz którą transformujemy:\n");
disp(A);
fprintf("Wartości własne tej macierzy\n")
disp(sort(eig(A)));
pause()
fprintf("Macierz po transformacji:\n")
disp(transform(A));
fprintf("Wartości własne macierzy po transformacji:\n")
disp(sort(eig(transform(A))));
end
