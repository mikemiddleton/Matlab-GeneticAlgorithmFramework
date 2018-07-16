% -----------------------------------------------------------------------
% Genetic_Algorithm.m
% Author: Michael Middleton
% Version: 0.1
% Description: This script contains a collection of functions which will 
% be used in the implementation of a genetic algorithm which will simulate 
% the genetic alterations of a genetic sequence of triats over multiple 
% populations of a specific species
% ----------------------------------------------------------------------

% hold on;
% for i = 1:1000
%     chromosome_1 = [1 0 1 0 0 1 0 1]; % 0xA5
%     chromosome_mutated = mutate(chromosome_1);
%     chromosome_mutated
%     summ = sum(chromosome_mutated,1);
%     plot(i,summ);
% end

hold on
gene_length = 10;
pop_size = 15;

population = new_initial_population(gene_length, pop_size);
champions = [];

% track over 100 generations
for i = 1:100
    % create a new library map
    gen_fit = containers.Map
    
    for j = 1:size(population,1)
        % associate the fitness of a chromosome with the chromosome itself
        gen_fit(num2str(j)) = cool(binary_to_decimal(population(j,:)));
    end
    
    vals = cell2mat(values(gen_fit));
    % find 6 most fit parents in the population
    
    fitnesses = sort(vals,'descend');    
    breeders = zeros(6,gene_length);
    chromosome_keys = keys(gen_fit);
    for k = 1:6
        coolio = fitnesses(k);
        for l = 1:length(chromosome_keys)
            temp = chromosome_keys(l);
            
            temp2 = char(temp);
            
            
            % if found a cool key, add to breeders and remove from keys
            if gen_fit(temp2) == coolio
                breeders = [breeders; population(str2num(temp2),:)];
                %remove(gen_fit,chromosome_keys(l));
                break
            end
        end
    end
    %plot(-5*sin(cool(find_most_fit(population))),'*k');
    champions = [champions; find_most_fit(population)];
    % breed a new population of chromosomes from most fit parents
    population = breed_new_generation(breeders,pop_size,gene_length);
    
end


    x = [-50:100];
    y = zeros(1,length(x));
    for i = 1:length(x)
        y(i) = cool(x(i));
    end
    plot(x,y,'g')
    
    %plot(1:1000,champions,'r');
    plot(-5*sin(max(champions)), '*r')
    

