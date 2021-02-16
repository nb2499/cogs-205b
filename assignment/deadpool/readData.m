function data = readData(path)
% This function reads a data file saved on a csv file where the names 
% of the variables are stored on the first row
    if ~exist(path,'file')
        error('Directory: %s \n does not exist', path)
    end

    % Read data file in path with first row as names
    tmp_dat = readtable(path,'HeaderLines', 1)

    % Transform table to a matrix and save it as data
    data = tmp_dat{:,:}
end