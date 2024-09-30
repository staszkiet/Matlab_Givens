function[A]= transform(A)
% Projekt 2, Zadanie 21
% Stanisław Zaprzalski, 327415
%
% Funkcja przy pomocy obrotów Givensa zamienia symetryczną,
% pięcioprzekątniową macierz, na macierz trójdiagonalną
% Wejście:
%   A - macierz pięciodiagonalna, symetryczna
% Wyjście:
%   A - macierz przekształcona do formy trójdiagonalnej przy pomocy obrotów
%       Givensa


for i = 3:length(A)

    % zerowanie elementu będącego bezpośrednio pod drugą diagonalą
    if(A(i, i-2) ~= 0)
        A = GivensSym(A, i, i-2);

        % zerowanie powstałych przez obrót elementów niezerowych
        if(length(A) >= i+2 && abs(A(i+2, i-1)) ~= 0)
           A = GivensSym(A, i+2, i-1);
           for j = i+4:2:length(A)
               if(abs(A(j, j-3)) == 0)
                   break;
               end
            A = GivensSym(A, j, j-3);
           end
        end
    end
end