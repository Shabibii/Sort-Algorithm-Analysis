%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:        Hibbard 1963
% Author:       Samir Habibi (sid1819364)
% Rev. Date:    30/04/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function h7 = shellHibbard1963(N, k)
%SHELLHIBBARD1963 Gap sequence of Hibbard

i = 1;

while i > 0
    h(i) = 2^i - 1; 
    if h(i) > N
        break;
    end
    i = i + 1;
end
    
    mask = h < (N - 1);
    
    h2 = h.*mask;
    
    h3 = nonzeros(h2);
    
    h4 = h3(end:-1:1);
    h5 = reshape(h4',1,[]);
    h6 = [h5 0];
    
    h7 = h6(k);
end
