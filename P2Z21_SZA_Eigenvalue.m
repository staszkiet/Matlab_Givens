function [l, err, i] = P2Z21_SZA_Eigenvalue(x, A, eps, it)
% Przybliżanie największej (co do wartości bezwzględnej) wartości własnej
% pięcioprzekątniowej, symetrycznej macierzy A ∈ R^(n x n). W pierwszym
% kroku macierz zostaje przekształcona do postaci trójprzekątniowej przy
% użyciu obrotów Givensa. Do przybliżenia dominującej wartości własnej
% funkcja używa metody potęgowej z normowaniem.
% Wejście:
%   x - przybliżenie początkowe wektora odpowiadającego największej co do
%       modułu wartości własnej macierzy.
%   A - Macierz pięciodiagonalna, symetryczna, której dominującej wartości
%       własnej będziemy szukać
% eps - Dokładność metody potęgowej, po której osiągnięciu metoda kończy
%       działanie
%  it - Maksymalna ilość iteracji metody potęgowej
% Wyjście:
%   l - przybliżenie największej co do modułu wartości własnej macierzy A.
% err - oszacowanie błędu z warunku stopu metody potęgowej uzyskane w
%       ostatniej iteracji
%   i - ilość iteracji wykonanych przez metodę potęgową
A = transform(A);
[l, err, i] = PowerMethodTrid(A, x, eps, it);
