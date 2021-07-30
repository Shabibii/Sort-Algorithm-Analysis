%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:        Knuth 1973
% Author:       Samir Habibi (sid1819364)
% Rev. Date:    30/04/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function h7 = shellKnuth1973(N, k)
%SHELLKNUTH1973 Gap sequence of Knuth

    i = 1;

    while i > 0
        h(i) = (3^i - 1)/2;
        if h(i) > ceil(N/3)
            break;
        end
        i = i + 1;
    end

    mask = h < N;
    
    h2 = h.*mask;
    
    h3 = nonzeros(h2);
    
    h4 = h3(end:-1:1);
               
    h5 = reshape(h4',1,[]);
    h6 = [h5 0];    
    
    h7 = h6(k);
end
