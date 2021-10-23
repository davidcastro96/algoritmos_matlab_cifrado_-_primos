clc;
% Número ingresado por el usuario
str = input('Escriba un número positivo ');
cont = 0;
for i = 1:str
    % Remainder after division
    remainder = rem(str,i);
    if remainder == 0
        cont = cont + 1;
    end
end

if cont == 2
    disp('Es un número primo');
else
    disp('No es un número primo');
end