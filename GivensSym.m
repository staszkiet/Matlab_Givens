function[A]= GivensSym(A, i, j)
%
% Funkcja przyjmuje symetryczną macierz i przy pomocy obrotów Givensa
% zeruje elementy na pozycjach (i, j) i (j, i) w macierzy A. i~=j.
% Wejście:
%   A - Macierz symetryczna z przestrzeni RxR
%   i - numer wiersza, w którym znajduje się pierwszy zerowany element.
%   j - numer kolumny, w której znajduje się pierwszy zerowany element.
% Wyjście:
%   A - macierz z wyzerowanymi elementami na pozycjach (i, j) i (j, i)

% wyznaczenie wartości r, c i s
if abs(A(i, j)) >= abs(A(i-1, j))
   r = -A(i-1, j)/A(i, j);
   s = 1/sqrt(1 + r^2);
   c = r*s;
else
   r = -A(i, j)/A(i-1, j);
   c = 1/sqrt(1 + r^2);
   s = c*r;
end

% wyznaczenie macierzy obrotu
P = [c, -s; s c]; 

% zastosowanie obrotu Givensa na odpowiendnie wiersze i kolumny macierzy
pom = A(i-1:i, i-1:i);
A(i-1:i, :) = P*A(i-1:i, :);
A(:, i-1:i) = A(i-1:i, :)'; 
pom = P*pom*P'; 
A(i-1:i, i-1:i) = pom;
