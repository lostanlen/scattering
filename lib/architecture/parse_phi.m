function phi_bools = parse_phi(phi_string)
switch phi_string
    case 'by_substraction'
        phi_bools = struct( ...
            'by_substraction', true, ...
            'gaussian', false, ...
            'rectangular', false);
    case 'gaussian'
        phi_bools = struct( ...
            'by_substraction', false, ...
            'gaussian', true, ...
            'rectangular', false);
    case 'rectangular'
        phi_bools = struct( ...
            'by_substraction', false, ...
            'gaussian', false, ...
            'rectangular', true);
            
end
end