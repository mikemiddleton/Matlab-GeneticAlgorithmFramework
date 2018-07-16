function newborn_generation = breed_new_generation(most_fit_parents, population_size, gene_length)
    % set space for new population
    newborn_generation = zeros(population_size, gene_length);
    
    for i = 1:population_size
       % select 2 parents from most fit - assuming 6 most fit
       parent_a = most_fit_parents(ceil(rand*6),:);
       parent_b = most_fit_parents(ceil(rand*6),:);
       
       % breed new child chromosome
       child = breed(parent_a, parent_b);
       newborn_generation(i,:) = child;
    end
end