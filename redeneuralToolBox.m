function [ resp ] = redeneuralToolBox( )

x = [0 0 0; 0 0 1; 0 1 0; 0 1 1; 1 0 0; 1 0 1; 1 1 0; 1 1 1]';
yd = [0 0; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 1 1]';
wb= [-0.4139 0.3238]';
w = [ 0.0905    0.0015;
    0.1767   -0.1842;
    0.2691    0.2395]';
% Criar a rede
net = newp(x,yd);

% Definir taxa de aprendizado
net.trainParam.lr = 0.1;

% Pesos da rede
net.b{1,1}=wb;
net.IW{1,1}=w;

% Parâmetros de treinamento
net.trainParam.epochs=10;
net.trainParam.goal=0;

% Treinar a rede
net = train(net,x,yd);

% Simular a rede
y = sim(net, x)';

net.b{1,1}'
net.IW{1,1}'





