function[x, err] = PowerMethodIt(x, x1, x2)
% Projekt 2, Zadanie 21
% Stanisław Zaprzalski, 327415
%
% Funkcja wykonuje iterację metody potęgowej dla macierzy A, która jest
% trójdiagonalna i symetryczna
% Wejście:
%   x - przybliżenie wektora własnego odpowiadającego największej co do
%       modułu wartości własnej macierzy. Wektor pionowy
%  x1 - wektor elementów z diagonali macierzy której wartość własną
%       przybliżamy. Elementy podane są w kolejności A(1, 1)...A(n, n).
%  x2 - wektor elementów leżących w macierzy bezpośredinio pod elementami z
%       x1. Elementy podane są w kolejności A(2, 1)...A(n, n-1).
% Wyjście:
%  x - nowe przybliżenie wektora własnego odpowiadającego największej co 
%       do modułu wartości własnej macierzy.

x = x/sqrt(sum((abs(x)).^2)); % normowanie wektora
Av = PowerMethodMult(x, x1, x2); % iteracja metody
l = x'*Av/(x'*x); % przybliżenie poprzedniej wartości własnej
xl = x; % zapisanie starej iteracji
x = Av; % zapisanie nowej iteracji
err = sqrt(sum((abs((x - l*xl))).^2))/abs(l); % błąd metody
