

clear all; close all; 

cd('U:\Kira\Projects\Beth_MixedDiseaseModels\Data\2DOIS\Exp1_2sStim')
load('2sStimData_indTrials.mat')

% cd('U:\Kira\Projects\Beth_MixedDiseaseModels\Data\2DOIS\Exp3_16sStim');
% load('16sStimData_indTrials.mat')

%% FIGURE 2 or figure 4 
%SUPP FIG 4, 5 

% 2A,D,E,H: TIME SERIES TRACES 
locoIwant = 1; %1 rest trials, 3 loco at stim onset
grpIwant = 1; %1 AD, 2 WT, 3 ATH, 4 MIX

indx = intersect(intersect(find(T.locoGrp==locoIwant),find(T.grpID==grpIwant)), find(T.sex==1));

% mean(hbt_W(indx,:))';

mean(hbt_A(indx,:))';
getSEM(hbt_A(indx,:))';

mean(hbo_A(indx,:))';
getSEM(hbo_A(indx,:))';

mean(hbr_A(indx,:))';
getSEM(hbr_A(indx,:))';

mean(locomotion(indx,:))';
getSEM(locomotion(indx,:))';

% 2B-C,F-G: HbT max pk and HbR AUC 
locoIwant = 1; %1 rest trials, 3 loco at stim onset
grpIwant = 1; %1 AD, 2 WT, 3 ATH, 4 MIX

indx = intersect(intersect(find(T.locoGrp==locoIwant),find(T.grpID==grpIwant)), find(T.sex==1));

T.hbt_P_maxpk(indx);
T.hbr_P_AUC(indx);

T.hbt_A_maxpk(indx);
T.hbr_A_AUC(indx);
T.loco_AUC(indx); 

%% FIGURE 3

% 3A or D - CORRELATION BETWEEN TRIAL # AND MAX PK IN hbt ART or AUC in hbr art:
locoIwant = 1; %1 rest trials, 3 loco at stim onset
grpIwant = 4; %1 AD, 2 WT, 3 ATH, 4 MIX

indx = intersect(intersect(find(T.locoGrp==locoIwant),find(T.grpID==grpIwant)), find(T.sex==1));

T.trialID(indx);
T.hbt_A_maxpk(indx);
T.hbr_A_AUC(indx);


%B,C, E,F - COMPARING EARLY VS LATE TRIALS
locoIwant = 1; %1 rest trials, 3 loco at stim onset
grpIwant = 4; %1 AD, 2 WT, 3 ATH, 4 MIX
indx = intersect(intersect(find(T.locoGrp==locoIwant),find(T.grpID==grpIwant)), find(T.sex==1));

%early trials (1-5)
% trialsIwant = indx(find(T.trialID(indx)<=5));
% mean(hbt_A(trialsIwant,:),1)'; 
% getSEM(hbt_A(trialsIwant,:),1)'; 
% mean(hbr_A(trialsIwant,:),1)'; 
% getSEM(hbr_A(trialsIwant,:),1)'; 
% T.hbt_A_maxpk(trialsIwant);
% T.hbr_A_AUC(trialsIwant);

%late trials (25-30)
trialsIwant = indx(find(T.trialID(indx)>=25));
% mean(hbt_A(trialsIwant,:),1)'; 
% getSEM(hbt_A(trialsIwant,:),1)'; 
mean(hbr_A(trialsIwant,:),1)'; 
getSEM(hbr_A(trialsIwant,:),1)'; 
% T.hbt_A_maxpk(trialsIwant);
% T.hbr_A_AUC(trialsIwant);

%% SUPP FIG 1: SEX DIFFERENCES

%A: HAEM TRACES FOR WT/AD M/F (COLLAPSE ACROSS ALL LOCO GRPS)

sexIwant = 2; %1 M, 2 F
grpIwant = 1; %1 AD, 2 WT, 3 ATH, 4 MIX
indx = intersect(find(T.sex==sexIwant),find(T.grpID==grpIwant));

T.loco_AUC(indx); 

T.hbt_P_maxpk(indx);
T.hbr_P_AUC(indx);

% mean(hbt_P(indx,:),1)'; 
% getSEM(hbt_P(indx,:),1)';

mean(hbt_A(indx,:),1)'; 
getSEM(hbt_A(indx,:),1)';

mean(hbo_A(indx,:),1)'; 
getSEM(hbo_A(indx,:),1)';

mean(hbr_A(indx,:),1)'; 
getSEM(hbr_A(indx,:),1)';

mean(locomotion(indx,:))';
getSEM(locomotion(indx,:))';

T.hbt_A_maxpk(indx);
T.hbr_A_AUC(indx);
T.loco_AUC(indx); 

%% SUPP FIG 7 - LOCO RANK

grpIwant =  4; %1 AD, 2 WT, 3 ATH, 4 MIX
indx = intersect(find(T.sex==1),find(T.grpID==grpIwant));

% rank the loco AUC in ascending order and plot top and bottom 10% of
% walking trials
%sort loco events in ascending order, i.e. from lowest loco AUC to highest
[~,locoInd] = sort(T.loco_AUC(indx), 'ascend');
%reorder hbt and loco trace responses according to lowest to most loco index
locot = T.loco_AUC(indx);
locot = locot(locoInd);
hbtpkt = T.hbt_A_maxpk(indx);
hbtpkt = hbtpkt(locoInd);
hbrAUCt = T.hbr_A_AUC(indx);
hbrAUCt = hbrAUCt(locoInd);

%bottom 20%
locot([1:round(size(locot,1)/5)],1);
hbtpkt([1:round(size(locot,1)/5)],1);
hbrAUCt([1:round(size(locot,1)/5)],1);

%top 20%
locot([(size(locot,1)-round(size(locot,1)/5))+1:end],1);
hbtpkt([(size(locot,1)-round(size(locot,1)/5))+1:end],1);
hbrAUCt([(size(locot,1)-round(size(locot,1)/5))+1:end],1);






