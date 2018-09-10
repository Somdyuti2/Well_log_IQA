clc
clear all
close all

load quality_acceptable % Load NIQE scores of test well logs from 'acceptable' category
Qual(:,1)=Q;
load quality_unacceptable
Qual(:,2)=Q;
N=['Acceptable', 'Unacceptable']; % Load NIQE scores of test well logs from 'unacceptable' category

%% Generate boxplot
h = boxplot(Qual);
set(h,{'linew'},{2.5})
xticklabels({'Acceptable', 'Unacceptable'})
xlabel('Category', 'FontSize', 20)
ylabel('NIQE Scores', 'FontSize', 20)