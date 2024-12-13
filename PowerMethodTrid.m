function[l, err, i] = PowerMethodTrid(A, x, eps, it)
%
% Funkcja korzystając z metody potęgowej z normowaniem znajduje dominującą
% wartość własną macierzy symetrycznej, trójdiagonalnej.
% Wejście:
%   A - macierz trójdiagonalna z przestrzeni R^(nxn), której wartości
%       własnej szukamy
%   x - przybliżenie początkowe wektora odpowiadającego największej co do
%       modułu wartości własnej macierzy. Wektor pionowy
% eps - Dokładność metody potęgowej, po której osiągnięciu metoda kończy
%       działanie
%  it - Maksymalna ilość iteracji metody potęgowej
% Wyjście:
%   l - przybliżenie największej co do modułu wartości własnej macierzy A.
% err - oszacowanie błędu z warunku stopu metody potęgowej uzyskane w
%       ostatniej iteracji
%   i - ilość iteracji wykonanych przez metodę potęgową

% zapisanie w wektorze elementów z głównej diagonali A i subdiagonali
err = eps;
x1 = diag(A);
if(length(x1) == 1)
    x2 = [];
else
    x2 = diag(A, 1);
end

% metoda potęgowa z normowaniem
for i = 1:it

    % iteracja metody potęgowej
    [x, err] = PowerMethodIt(x, x1, x2);
    
    % sprawdzenie warunku zakończenia
    if err < eps
        break
    end
end

% obliczenie wartości własnej odpowiadającej przybliżonemu wektorowi
x = x/norm(x);
l = x'*PowerMethodIt(x, x1, x2)/(x'*x);
