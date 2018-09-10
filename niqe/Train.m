clc;
clear all;
close all; 

%% Train NIQE Model on acceptable well logs
%Folder containing the pristine images 
folderpath   = '..\Train';
%Height of the block
blocksizerow = 96;
%Width of the block
blocksizecol = 96;
%Verical overlap between blocks
blockrowoverlap = 0;
%Horizontal overlap between blocks
blockcoloverlap = 0;
%The sharpness threshold level
sh_th        = 0.75;

[mu_prisparam cov_prisparam]  = estimatemodelparam(folderpath,blocksizerow,blocksizecol,blockrowoverlap,blockcoloverlap,sh_th);