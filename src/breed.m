% -----------------------------------------------------------------------
% Breed()
% Description: this function will take the genetic sequence of two 
% different parents and produce an offspring with a new genetic sequence.
% This function will utilize the mutate() function which will simulate
% the rare occurance of a genetic mutation. The algorithm is based off 
% of a 2-point cross-over selection technique, common to genetic 
% algorithm reproduction.
% -----------------------------------------------------------------------
function child = breed(parent_a, parent_b)
    % function determines the genetic influence of each parent
    % portion = floor(rand*(length(parent_a)+1));
    % child = parent_a;
    % child receives genetic sequence proportionate to the influence 
    % of each parent with a random element as well
    % child(portion:length(child)) = parent_b(portion:length(child));
    
    % generate 2 cross-over points
    point1 = floor(rand*ceil((length(parent_a)/2)));
   
     % accounts for an index error which occurs when point1 is 1
    if point1 == 0
        point1 = point1 + 1;
    end
    
    point2 = ceil(rand*ceil((length(parent_a)/2))) + point1;
    
    % produce child from 2 parents
    child = [parent_a(1:point1), parent_b(point1+1:point2), parent_a(point2+1:length(parent_a))];
    child = mutate(child);    
end
