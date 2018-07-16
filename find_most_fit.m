% -----------------------------------------------------------------------
% find_most_fit()
% Description: this function will take in a population and determine the 
% single most fit chromosome in that population based on our fitness
% function
% -----------------------------------------------------------------------
function most_fit_chromosome = find_most_fit(population)

    cool_chromosomes = zeros(1,size(population,1));
    for i = 1:size(population,1)
        cool_chromosomes(i) = cool(binary_to_decimal(population(i)));
    end
    most_fit_chromosome = max(cool_chromosomes);
end