clc
clear all
close all

load modelparameters_trained.mat %Load trained model parameters
 
blocksizerow    = 96;
blocksizecol    = 96;
blockrowoverlap = 0;
blockcoloverlap = 0;

current = pwd;

% Compute NIQE Scores of test well logs from 'acceptable' category
folderpath   = '..\Test\Acceptable';
cd(sprintf('%s',folderpath))
names        = ls;
names        = names(3:end,:);
cd(current)
sum = 0, count = 0;
for itr = 1:length(names)
    itr    
sprintf('%s\\%s',folderpath,names(itr,:));  
im               = imread(sprintf('%s\\%s',folderpath,names(itr,:)));
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
save quality_acceptable Q

%% Compute NIQE Scores of test well logs from 'unacceptable' category
folderpath   = '..\Test\Unacceptable';
cd(sprintf('%s',folderpath))
names        = ls;
names        = names(3:end,:);
cd(current)
sum = 0, count = 0;
for itr = 1:length(names)
    itr    
sprintf('%s\\%s',folderpath,names(itr,:));  
im               = imread(sprintf('%s\\%s',folderpath,names(itr,:)));
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
save quality_unacceptable Q
