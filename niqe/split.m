clc; 
clear all; 
close all; 

%% Split Pristine well logs into 512x512 chunks to form the training set.
folderpath   = '..\Well_log_pristines';
current = pwd;
cd(sprintf('%s',folderpath));
names        = ls;
names        = names(3:end,:);
cd(current)
for itr = 1:length(names)
itr
[I, map]=imread(strcat('..\Well_log_pristines\',names(itr,:)));

if ~isempty(map)
    I = ind2rgb(I, map);
    I = rgb2gray(I); 
end
[m n] = size(I);
count=0;
for i = 1:512:m
    for j = 1:512:n
        if((i+511)<m && (j+511)<n)
        I1=I(i:i+511,j:j+511);
        imwrite(I1, strcat('..\Train\',names(itr,:),'_', num2str(count), '.png'));
        count = count + 1;
        else
          continue
        end
    end
end
end