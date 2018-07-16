% -----------------------------------------------------------------------
% Mutate()
% Description: this function will take in a particular genetic sequence
% and simulate the mutation of various characteristics based on a
% set of statistical probabilities. It will return an altered genetic
% sequence after whatever mutations exist have been completed in this
% particular sequence
% -----------------------------------------------------------------------
function mutated_chromosome = mutate(chromosome)
    mutated_chromosome = chromosome; % copies genetic sequence
    for i=1:length(chromosome) % analyze every bit in genetic sequence
        prob = rand;
        if prob >= .99 % 1/100 chance of a bit mutation
            if mutated_chromosome(i) == 0
                mutated_chromosome(i) = 1;
            else
                mutated_chromosome(i) = 0;
            end
        else
            continue
        end
    end
end
