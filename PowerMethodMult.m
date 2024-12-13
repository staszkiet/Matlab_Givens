function[Av] = PowerMethodMult(x, x1, x2)
%
% Funkcja wykonuje mnożenie wektora przez macierz trójdiagonalną,
% symetryczną
% Wejście:
%   x - pionowy wektor, który mnożymyprzez macierz
%  x1 - wektor elementów z diagonali macierzy której wartość własną
%       przybliżamy. Elementy podane są w kolejności A(1, 1)...A(n, n).
%  x2 - wektor elementów leżących w macierzy bezpośredinio pod elementami z
%       x1. Elementy podane są w kolejności A(2, 1)...A(n, n-1).
% Wyjście:
%  Av - wynik działania
a = zeros(size(x));
b = zeros(size(x));
a(1:length(a)-1) = x2.*x(2:length(x));
b(2:length(b)) = x2.*x(1:length(x2));
Av = x1.*x + a + b;

end % function
