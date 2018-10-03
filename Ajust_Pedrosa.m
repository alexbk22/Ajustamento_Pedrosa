clc
clear all
format longG;
disp('===================================================================')
disp('UNIVERSIDADE FEDERAL DO PARANÁ - UFPR')
disp('Prof.:      Dr. Daniel Rodrigues dos Santos')
disp('Aluno:      José Pedrosa')
disp('Curso:      Mestrado em Ci�ncias Geod�sicas - Setembro/2018')
disp('Trabalho:   Calibra��o Boresight')
disp('===================================================================')

%Metodo Parametrico
%Leitura do arquivo de CORRESPONDENCIAS
fname = 'corrpar_alex.txt';
%ESTRUTURACAO DO ARQUIVO
%FOTOx, FOTOy, Nro_Plano, nx, ny, nz, p
dado = load(fname);

%Leitura do arquivo do INS
fname = 'XYZ_OPHIK_alex.txt';
%ESTRUTURACAO DO ARQUIVO
%INSx, INSy, INSz, Omega, Phi, Kappa
inercial = load(fname);

%#################   VALORES INICIAIS   ##############
%deltaO=0; deltaPhi=0; deltaKappa=0;
f=15.7558*10^-3; %Distancia focal em metros
esc = 1; %Escala

%Deltas Omega, Phi, Kappa
deltaOPK=[0;0;0];

%Vetor X0
X0=montar_X0(deltaOPK, esc, dado, inercial);









%%Matriz Boresight (valor �nico)
%b(1,1) = -cos(deltaPhi)*sin(deltaKappa);
%b(1,2) = cos(deltaPhi)*sin(deltaKappa);
%b(1,3) = -sin(deltaPhi);
%b(2,1) = sin(deltaO)*sin(deltaPhi)*cos(deltaKappa)-cos(deltaO)*sin(deltaKappa);
%b(2,2) = sin(deltaO)*sin(deltaPhi)*sin(deltaKappa)+cos(deltaO)*cos(deltaKappa);
%b(2,3) = sin(deltaO)*cos(deltaPhi);
%b(3,1) = cos(deltaO)*sin(deltaPhi)*cos(deltaKappa)+sin(deltaO)*sin(deltaKappa);
%b(3,2) = cos(deltaO)*sin(deltaPhi)*sin(deltaKappa)-sin(deltaO)*cos(deltaKappa);
%b(3,3) = cos(deltaO)*cos(deltaPhi);

