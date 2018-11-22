clc
clear all
close all

load modelparameters_trained.mat %Load trained model parameters
 
blocksizerow    = 96;
blocksizecol    = 96;
blockrowoverlap = 0;
blockcoloverlap = 0;
arg=input('Enter ''A'' to evaluate on dataset A and ''B'' to evaluate on dataset B:','s');

% Compute NIQE Scores of test well logs from 'acceptable' category
folderpath   = strcat('..\Test\dataset_', arg, '\Acceptable');
names        = dir(folderpath);
names        = names(3:end,:);
sum = 0;
count = 0;
for itr = 1:length(names)  
im               = imread(sprintf('%s\\%s',folderpath,names(itr).name));
if var(double(im(:)))==0
    continue
end
[row col] = size(im);
if(row>=blocksizerow && col>=blocksizecol)
    quality = computequality(im,blocksizerow,blocksizecol,blockrowoverlap,blockcoloverlap, ...
    mu_prisparam,cov_prisparam);
    sum = sum + quality;
    Q(itr) = quality;
    count = count + 1;
end
end
save quality_acceptable Q

%% Compute NIQE Scores of test well logs from 'unacceptable' category
folderpath   = strcat('..\Test\dataset_', arg, '\Unacceptable');
names        = dir(folderpath);
names        = names(3:end,:);
sum = 0, count = 0;
for itr = 1:length(names)  
im               = imread(sprintf('%s\\%s',folderpath,names(itr).name));
if var(double(im(:)))==0
    continue
end
[row col] = size(im);
if(row>=blocksizerow && col>=blocksizecol)
    quality = computequality(im,blocksizerow,blocksizecol,blockrowoverlap,blockcoloverlap, ...
    mu_prisparam,cov_prisparam);
    sum = sum + quality;
    Q(itr) = quality
    count = count + 1;
end
end
save quality_unacceptable Q
