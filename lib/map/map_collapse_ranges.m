function zeroth_ranges = map_collapse_ranges(zeroth_ranges, subscripts)
%% Cell-wise map
if iscell(zeroth_ranges)
    nCells = prod(cell_sizes);
    for cell_index = 1:nCells
        zeroth_ranges{cell_index} = ...
            map_collapse_ranges(zeroth_ranges{cell_index}, subscripts);
    end
    return
end

%% Tail call
zeroth_ranges(:, subscripts) = [];
end