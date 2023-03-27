function [ resp ] = redeneuralAlgoritmo( )
% Criar vetores de entrada - Cada coluna é um xo x1 x2 x3 - Tamanho: [8,4]
x = [1 0 0 0;1 0 0 1;1 0 1 0;1 0 1 1;1 1 0 0;1 1 0 1;1 1 1 0;1 1 1 1];

% valores de saida desejados [8,2]
yd=[0 0; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 1 1];

% Valores da matriz w [4,2]
% w = -0.5 + rand(4,2);
wteste = [-0.4139    0.3238;
           0.0905    0.0015;
           0.1767   -0.1842;
           0.2691    0.2395];

% Saída: Multiplicar uma matriz x[8,4]por w[4,2] gerando y[8,2]
y= (x*wteste) > 0;

% erro[8,2]
e=yd-y;
count=0;

while norm(e)~=0
    % Atualização de w= [4,8]*e[8,2] + w[4,2]
    wteste = wteste + 0.1*x'*e; 
    % Novo y
    y= (x*wteste) > 0;
    % Atualizção do erro
    e=yd-y; 
    count=count+1;
end
y
count
wteste


