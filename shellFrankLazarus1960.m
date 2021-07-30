%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:        Frank and Lazarus 1960
% Author:       Samir Habibi (sid1819364)
% Rev. Date:    30/04/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function h3 = shellFrankLazarus1960(N, k)
%FRANKLAZARUS1960 Gap seqence of Frank and Lazarus

    i = 1;
    
    while i > 0
        h(i) = 2*(floor(N/2^(i+1))) + 1;
        if h(i) == 1            
            break;
        end
        i = i + 1;
    end

    h2 = [h 0];
    
    h3 = h2(k);
end

