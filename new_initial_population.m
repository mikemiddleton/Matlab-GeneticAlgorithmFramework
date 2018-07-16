% -----------------------------------------------------------------------
% new_initial_population()
% Description: this function will take in the size of the population
% and the length of the genetic sequence each chromosome will have
% and will return a randomly generated population of genetic samples
% -----------------------------------------------------------------------
function population = new_initial_population( genetic_length, population_size )
    % give new population the appropriate dimensions
    population = zeros(1,genetic_length);
    for i=1:population_size+1
        chrom = new_random_chromosome(genetic_length);
        population = [population; chrom];
    end
    population = population(2:population_size+1,:);
end

