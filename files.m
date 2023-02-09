function [A,B,C,D]=files

fileID = fopen('netpC1.txt','r');
formatSpec = '%f';
sizeA = [9 7];
A = fscanf(fileID,formatSpec,sizeA);
A=A';


fileID = fopen('netpC2.txt','r');
formatSpec = '%f';
sizeB = [9 7];
B = fscanf(fileID,formatSpec,sizeB);
B=B';

fileID = fopen('netpC3.txt','r');
formatSpec = '%f';
sizeC = [9 7];
C = fscanf(fileID,formatSpec,sizeC);
C=C';

fileID = fopen('netpC4.txt','r');
formatSpec = '%f';
sizeD = [9 7];
D = fscanf(fileID,formatSpec,sizeD);
D=D';
