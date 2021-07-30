%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:        Pratt 1971
% Author:       Samir Habibi (sid1819364)
% Rev. Date:    30/04/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function h12 = shellPratt1971(N, k)
%SHELLPRATT1971 Gap sequence of Pratt

    i = 1;

    while i > 0
        h(i) = 2^i;    
        if h(i) > N
            break;
        end
        i = i + 1;
    end

    h1 = [1 h];

    j = 1; 

    while j > 0
        h2(j) = 3^j;    
        if h2(j) > N
            break;
        end
        j = j + 1;
    end   
    
    h3 = (h2').*h1;   
    h4 = reshape(h3',1,[]);

    h5 = [h4 h2 h1];
    
    h6 = unique(h5, 'sorted');

    mask = h6 < N;
    
    h7 = h6.*mask;
    
    h8 = nonzeros(h7);
    
    h9 = h8(end:-1:1);
       
    h10 = reshape(h9',1,[]);
    h11 = [h10 0];    
    
    h12 = h11(k);

end
