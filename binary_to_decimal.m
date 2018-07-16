% -----------------------------------------------------------------------
% binary_to_decimal.m
% Author: Michael Middleton
% Version: 0.1
% Description: This function will calculate the decmimal equivalent of 
%              the binary chromosome genetic sequence
% ----------------------------------------------------------------------

function decimal_chromosome = binary_to_decimal(input_chromosome)
    val = 0;
    for i=1:length(input_chromosome)
        if input_chromosome(i) == 1
            val = val + 2^(length(input_chromosome)-(i));
        else
            continue
        end
    end
    decimal_chromosome = val;
end