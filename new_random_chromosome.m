% -----------------------------------------------------------------------
% new_random_chromosome()
% Description: this function will generate a new genetic sequence of 
% the length taken as an input parameter. It will then return to the 
% invocation the binary sequence
% -----------------------------------------------------------------------
function random_chromosome = new_random_chromosome(chromosome_length)
    random_chromosome = rand(1,chromosome_length);
    for i=1:chromosome_length
        if random_chromosome(i) < .5
            random_chromosome(i) = 0;
        else
            random_chromosome(i) = 1;
        end
end

