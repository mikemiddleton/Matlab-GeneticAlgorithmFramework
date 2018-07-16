% / ---------------------------------------------------------------------
% / cool():
% / This is the fitness function. It depicts the coolness of a person
% / given their beard length. This function was developed by trial and 
% / error until a clear maxima was visable over a given interval
% / ---------------------------------------------------------------------
function coolness = cool(chromosome)
    if ((chromosome >= 0) && (chromosome <= 2*pi))
        coolness = 5*sin(chromosome);
    else
        coolness = -log(chromosome);
    end
end
