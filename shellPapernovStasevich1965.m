%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:        Papernov and Stasevich 1965
% Author:       Samir Habibi (sid1819364)
% Rev. Date:    03/05/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function h8 = shellPapernovStasevich1965(N, k)
%SHELLPAPERNOVSTASEVICH1965 Gap sequence of Papernov and Stasevich

i = 1;

while i > 0
    h(i) = 2^i + 1; 
    if h(i) > N
        break;
    end
    i = i + 1;
end
    h2 = [1 h];
    
    mask = h2 < N;
    
    h3 = h2.*mask;
    
    h4 = nonzeros(h3);
    
    h5 = h4(end:-1:1);
    
    h6 = reshape(h5',1,[]);
    h7 = [h6 0];
    
    h8 = h7(k);
    
end
