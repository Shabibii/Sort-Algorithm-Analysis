%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:        Shell Sort Performance
% Author:       Samir Habibi (sid1819364)
% Rev. Date:    12/05/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
close all;
clc; 

maxArraySize = 10000;

% Reversed array
% V2 = maxArraySize:-1:1;

N = 1:maxArraySize; % different array sizes
reps = 100; % repetitions per array size

for ii = 1:maxArraySize
    currentArray = N(ii);

    comparisons1959 = zeros(1, reps);
    comparisons1960 = zeros(1, reps);
    comparisons1963 = zeros(1, reps);
    comparisons1965 = zeros(1, reps);
    comparisons1971 = zeros(1, reps);
    comparisons1973 = zeros(1, reps);

    movements1959 = zeros(1, reps);
    movements1960 = zeros(1, reps);
    movements1963 = zeros(1, reps);
    movements1965 = zeros(1, reps);
    movements1971 = zeros(1, reps);
    movements1973 = zeros(1, reps);

    for jj = 1:reps
%         V = randi(currentArray, [currentArray,1]); 
        V = maxArraySize:-1:1;
        [V1959, comparisons1959(jj), movements1959(jj)] = ...
            shellSortGeneric(@shell1959, V);
        [V1960, comparisons1960(jj), movements1960(jj)] = ...
            shellSortGeneric(@shellFrankLazarus1960, V);
        [V1963, comparisons1963(jj), movements1963(jj)] = ...
            shellSortGeneric(@shellHibbard1963, V);
        [V1965, comparisons1965(jj), movements1965(jj)] = ...
            shellSortGeneric(@shellPapernovStasevich1965, V);
        [V1971, comparisons1971(jj), movements1971(jj)] = ...
            shellSortGeneric(@shellPratt1971, V);
        [V1973, comparisons1973(jj), movements1973(jj)] = ...
            shellSortGeneric(@shellKnuth1973, V);
    end
    meanC1959(ii) = mean(comparisons1959);  
    meanM1959(ii) = mean(movements1959);

    meanC1960(ii) = mean(comparisons1960);
    meanM1960(ii) = mean(movements1960);

    meanC1963(ii) = mean(comparisons1963);
    meanM1963(ii) = mean(movements1963);

    meanC1965(ii) = mean(comparisons1965);
    meanM1965(ii) = mean(movements1965);
    
    meanC1971(ii) = mean(comparisons1971);
    meanM1971(ii) = mean(movements1971);

    meanC1973(ii) = mean(comparisons1973);
    meanM1973(ii) = mean(movements1973);    

end % end for

figure;
line1 = plot(1:maxArraySize, meanC1959, '-', 'Color', '#A2142F', ...
    'LineWidth', 1);hold on; % Shell (1959) comparison
line2 = plot(1:maxArraySize, meanC1960, '-', 'Color', '#0072BD', ...
    'LineWidth', 1); 
line3 = plot(1:maxArraySize, meanC1963, 'k-', 'LineWidth', 1); 
line4 = plot(1:maxArraySize, meanC1965, '-', 'Color', '#EDB120', ...
    'LineWidth', 1); 
line5 = plot(1:maxArraySize, meanC1971, '-', 'Color', '#77AC30', ...
    'LineWidth', 2);
line6 = plot(1:maxArraySize, meanC1973, '-', 'Color', '#7E2F8E',...
    'LineWidth', 1);

% Annotate Chart

legend('Shell (1959)','Frank and Lazarus (1960)','Hibbard (1963)',...
'Papernov and Stasevich (1965)','Pratt (1971)','Knuth (1973)');
xlabel('Array Length (N)','FontSize',14);
ylabel('Compares', 'FontSize', 14);
titleString = sprintf('%s\n%s', 'Shell Sorting Comparison Analysis');
title(titleString,'FontSize', 14);
xlim([0 maxArraySize]);
ylim([0 (max(meanC1959)+50000)]);
axis square;

figure;
line7 = plot(1:maxArraySize, meanM1959, '-', 'Color', '#A2142F', 'LineWidth', 1); hold on;% Shell (1959) movements
line8 = plot(1:maxArraySize, meanM1960, '-', 'Color', '#0072BD', 'LineWidth', 1);
line9 = plot(1:maxArraySize, meanM1963, 'k-', 'LineWidth', 1);
line10 = plot(1:maxArraySize, meanM1965, '-', 'Color', '#EDB120', 'LineWidth', 1);
line11 = plot(1:maxArraySize, meanM1971, '-', 'Color', '#7E2F8E', 'LineWidth', 2);
line12 = plot(1:maxArraySize, meanM1973, '-', 'Color', '#77AC30', 'LineWidth', 1);

% Annotate Chart

legend('Shell (1959)','Frank and Lazarus (1960)','Hibbard (1963)',...
'Papernov and Stasevich (1965)','Pratt (1971)','Knuth (1973)');
xlabel('Array Length (N)','FontSize',14);
ylabel('Moves', 'FontSize', 14);
titleString = sprintf('%s\n%s', 'Shell Sorting Movement Analysis');
title(titleString,'FontSize', 14);
xlim([0 maxArraySize]);
ylim([0 (max(meanM1971)+50000)]);
axis square;
