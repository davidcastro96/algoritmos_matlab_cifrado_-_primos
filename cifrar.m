clc;
% Declaración y definición de las matrices
abc =  ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
cba = ["EI","J","F","U","A","X","V","H","W","P","","G","S","R","K","O","B","T","Q","Y","D","M","L","Z","N","R"];

% Mensaje del usuario
str = input('Escriba el mensaje a cifrar ','s');
str = strrep(str,' ','');
str = upper(str);
disp(str);

% -------------------------------------------------------------------------
% Separar el string
strarr = split(str,"");
strarr(1) = [];
cantletras = numel(strarr);
strarr(cantletras) = [];

letra = "";
letracifrada = "";
result = "";

for s = 1:cantletras-1
    letra = strarr(s);
    % disp(letra);
    idx = find(abc==string(letra));
    letracifrada = cba(idx);
    result = result+letracifrada;
end

% Impresión del resultado
disp("Su mensaje cifrado es: " + result);