%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:        Shell Sort Function
% Author:       Samir Habibi (sid1819364)
% Rev. Date:    12/05/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [V, numComparisons, numMovements] = ...
    shellSortGeneric(gapFunction, V)
%SHELLSORT This function sorts arrays in ascending order, it takes the 
% gapfunction as input to decide the gap sequence used in sorting. Also,
% the comparisons and moves are tracked.

N         = length(V);      % Length of Array to be Sorted
k         = 1;              % Gap Index (1, 2, 3, ...)
gap       = gapFunction(N, k); % Gap sequence to use
gapNumber = 1;
numMovements = 0;           % moves
numComparisons = 0;         % compares

while(gap>0)    
    fprintf('\nCurrent Gap h = %d', gap);    
    for i = gap+1:N        
        temp = V(i);
        j = i;  
        while (j >= gap+1) && (V(j-gap) > temp)                   
            V(j) = V(j-gap);
            j = j - gap;            
            numMovements = numMovements + 1;
            numComparisons = numComparisons + 1;
        end % while
        V(j) = temp; 
        numMovements = numMovements + 1;  
    end %for      
    
    if(gap == 2)              % causes shell sort to become Insertion Sort
        gap = 1;
    else
        k   = k + 1;          % increment Gap Number
        gapNumber = gapNumber + 1;
        gap = gapFunction(N,k); % set New Gap Value
    end % if

end % while

end