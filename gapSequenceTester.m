%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:        Shell Gap Sequence Tester
% Author:       Samir Habibi (sid1819364)
% Rev. Date:    30/04/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
close all;
clc;
 
N = 1024; % Array Length

k = 1;    % Gap Index (k=1 is first gap to use)
h = N;    % h is Gap Size; Initialise to N as a dummy that is >1


while(h>1)
    h = shellKnuth1973(N, k);
    disp(h);
    k = k + 1;
end
