
% June 2024 - Script written by Kira
% Beth's Mixed Disease Data - 2s stim data 
% FIRST SCRIPT TO RUN TO...
% Get metrics needed out in table for R stats/plots
clear all; close all; 

%requires following subfunctions:
%getSEM, shadedErrorbar, catStimByLoco, getTraceParam

%change to directory with data in 
cd('U:\Kira\Projects\Beth_MixedDiseaseModels\Data\2DOIS\Exp1_2sStim')
% load data
load('returnData_n156_art_80_WAVP_exp1.mat')
load('walking_totals_n156_exp1.mat')

%% SPECIFY PREFS for functions

%%  Time series metrics prefs (for getTraceParam) %%%%%%%%%%%%%%%%%%%%
%specify which time period you want to look for your ts parameters
%between, i.e. look for AUC and max peak
%reqTim means requested time
%if this is left empty, some of the parameters cannot be detected and
%will be sent out as empty variables
prefs.reqTim = [5 10]; %[5 7] %seconds
%the time (secs) you want to average either side of your detected max
%peak, i.e. to make sure it isn't just a noise spike - dnt make this a
%large number (best to be <0.5)
%this will be used for all peaks detectedlocoPrefs
prefs.pkCheck = 0.25; %seconds
%if you want to look at the value of the trace at a certain time point
%(secs)
%reqPk means requested peak
%if this is left empty, some of the parameters cannot be detected and
%will be sent out as an empty variable
prefs.reqPk = 10; %[] %seconds

%% prefs for loco cond sorter %%%%%%%%%%%%%%%%%%%%%%%%
%length over which co-occuring loco counts
%we tested, and defaulted to 1/3 a second as most frame rates are
%~7.6Hz, so 1/4s is only 1.9 frames, which meant a single frame would
%count - this 1/3s works best within the limitations of our frame rate
locoPrefs.locoLength = 0.33; %seconds
%how much time to take before and after stim for classifying running
%outside of stim period
locoPrefs.timAroundStim = 4; %seconds
%min dist between loco events for them to be classified as distinct
%any loco events within this time of each other are counted as one
%event
locoPrefs.minDist = 1; %seconds
%loco classifier method
%0 counts individual frames with loco in them for each loco epoch
%1 finds start and end of loco epoch, and finds frames between these
%(i.e. entire period)
%1 will result in more epochs being classified as having loco, as it
%will last longer (takes from start to end)
locoPrefs.locoSorter = 1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%load group ID info (i.e. WT, AD, ATH or MIX)
%1=AD, 2=WT, 3=ATH, 4=MIX 
groupCode = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,... 
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 ,1,1,1,2,2,2,2,2,2,...
    2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,...
   2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,...
  3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4];

%1=M, 2=F
%separated rows by group for easier checking
sexCode = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,...
    1,1,1,1,1,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,1,1,1,1,2,2,2,2,1,1,1,1,1,1,1,1,...
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,...
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];

%extract time vector for plots and metrics
time = returnData{1, 1}.timTrials;
%make time vector start at 0
time = time-time(1); %NB/5s baseline 

fps = 7.9932; %2DOIS sampling rate (in 25s we take 200 frames) 200/25=8Hz
         
% loop through the imaging sessions, ROIs, and stim trials and extract 
% labelling info (e.g. animal ID etc) and data (loco and haem)          
animalID = {}; sessID=[]; expID=[]; trialID=[]; grpID=[]; sex=[]; locomotion=[]; ...
hbt_W=[]; hbt_A=[]; hbt_V=[]; hbt_P=[]; hbo_W=[]; hbo_A=[]; hbo_V=[]; hbo_P=[]; ...
hbr_W=[]; hbr_A=[]; hbr_V=[]; hbr_P=[];
for a = 1:size(returnData{1, 1}.hbtTrials,1) %loop sessions
    % for b = 1:size(returnData{1, 1}.hbtTrials,2) %loop ROIs (WAVP)
        for c=1:size(returnData{1, 1}.hbtTrials,4) %loop trials

            %take animal ID from exp folder name
            if ~isempty(extractBefore(['2',...
                    extractAfter(cs_dir{a},[filesep,'2'])],filesep))
                animalID{size(animalID,1)+1,1} = extractBefore(['2',...
                    extractAfter(cs_dir{a},[filesep,'2'])],filesep);
            else
                animalID{size(animalID,1)+1,1} = '30009'; %one mouse not working in loop- hardcode
            end
            sessID(size(sessID,1)+1,:)=a; %imaging session number
            trialID(size(trialID,1)+1,:)=c; %stim trial number
            grpID(size(grpID,1)+1,:)=groupCode(a); %experimental group ID
            sex(size(sex,1)+1,:)=sexCode(a); %sex category

            %get experiment number for animal (imaging sessions need to be listed
            %in chronological order)
            if a == 1
                expID(size(expID,1)+1,:)=1;
            else
                if ~isempty(strmatch(animalID{size(animalID,1)},...
                        animalID{size(animalID,1)-1})) %this animal is same as previous
                    if sessID(size(sessID,1)) == sessID(size(sessID,1)-1) %this session is same as previous
                        expID(size(expID,1)+1,:)=expID(size(expID,1),:);
                    else %same animal, but different imaging session 
                        expID(size(expID,1)+1,:)=expID(size(expID,1),:)+1;
                    end
                else %new animal, start the exp count from 1 again
                    expID(size(expID,1)+1,:)=1;
                end
            end

            % EXTRACT HAEM AND LOCO
            %extract individual trials
            %LOCOMOTION
            %interpolate loco trace so same size as haem
            locomotion(size(locomotion,1)+1,:)= interp1(tim_walk,...
                squeeze(all_walk_tot(a,c,:))',...
                linspace(0,tim_walk(end),size(returnData{1, 1}.hbtTrials(a,1,:,c),3))); 
            % HAEM - already been normalised 
            %HBT
            hbt_W(size(hbt_W,1)+1,:)= squeeze(returnData{1, 1}.hbtTrials(a,1,:,c))'; %whisker
            hbt_A(size(hbt_A,1)+1,:)= squeeze(returnData{1, 1}.hbtTrials(a,2,:,c))'; %whisker artery
            hbt_V(size(hbt_V,1)+1,:)= squeeze(returnData{1, 1}.hbtTrials(a,3,:,c))'; %whisker vein
            hbt_P(size(hbt_P,1)+1,:)= squeeze(returnData{1, 1}.hbtTrials(a,4,:,c))'; %whisker parenchyma
            %HBO
            hbo_W(size(hbo_W,1)+1,:)= squeeze(returnData{1, 1}.hboTrials(a,1,:,c))'; %whisker
            hbo_A(size(hbo_A,1)+1,:)= squeeze(returnData{1, 1}.hboTrials(a,2,:,c))'; %whisker artery
            hbo_V(size(hbo_V,1)+1,:)= squeeze(returnData{1, 1}.hboTrials(a,3,:,c))'; %whisker vein
            hbo_P(size(hbo_P,1)+1,:)= squeeze(returnData{1, 1}.hboTrials(a,4,:,c))'; %whisker parenchyma
            %HBR
            hbr_W(size(hbr_W,1)+1,:)= squeeze(returnData{1, 1}.hbrTrials(a,1,:,c))'; %whisker
            hbr_A(size(hbr_A,1)+1,:)= squeeze(returnData{1, 1}.hbrTrials(a,2,:,c))'; %whisker artery
            hbr_V(size(hbr_V,1)+1,:)= squeeze(returnData{1, 1}.hbrTrials(a,3,:,c))'; %whisker vein
            hbr_P(size(hbr_P,1)+1,:)= squeeze(returnData{1, 1}.hbrTrials(a,4,:,c))'; %whisker parenchyma

        end %end of loop trials
    % end %end of loop ROIs (WAVP)
end %end of loop sessions
clear a b c

%% remove traces with DC shifts
% figure;
% plot(time,hbt_W(2670,:));
% plot(time,hbt_W(3160,:));

animalID(2670,:) = []; 
animalID(3159,:) = []; 

sessID([2670,3160],:)=[]; 
expID([2670,3160],:)=[]; 
trialID([2670,3160],:)=[]; 
grpID([2670,3160],:)=[]; 
sex([2670,3160],:)=[]; 
locomotion([2670,3160],:)=[]; 
hbt_W([2670,3160],:)=[]; 
hbt_A([2670,3160],:)=[]; 
hbt_V([2670,3160],:)=[]; 
hbt_P([2670,3160],:)=[]; 
hbo_W([2670,3160],:)=[]; 
hbo_A([2670,3160],:)=[]; 
hbo_V([2670,3160],:)=[]; 
hbo_P([2670,3160],:)=[]; 
hbr_W([2670,3160],:)=[]; 
hbr_A([2670,3160],:)=[]; 
hbr_V([2670,3160],:)=[]; 
hbr_P([2670,3160],:)=[];


%% Get out time series metrics (e.g. AUC, max peak etc)

% time series parameters- call function getTraceParam
for a = 1:size(hbt_W,1) %loop loco event trials
    
    %%%%% LOCO
    [traceparameters_loco(a)] = getTraceParam(locomotion(a,:),fps,prefs);
    % % for loco want to get AUC between 5-10s too (rather than 5-7s stim period
    % % only) as will rank this way for separating bottom and top 20% of
    % % trials
    % prefs_t = prefs;
    % prefs_t.reqTim = [5 10]; %[] %seconds
    % [traceparameters_loco_long(a)] = getTraceParam(locomotion(a,:),fps,prefs_t);
    prefs_t.reqTim = [1 24]; %[] %seconds
    [traceparameters_loco_wholeTrial(a)] = getTraceParam(locomotion(a,:),fps,prefs_t);
    %%%%% HBT 
    %Hbt Whisker region 
    [traceparameters_hbt_W(a)] = getTraceParam(hbt_W(a,:),fps,prefs);
    %Hbt Whisker Artery region 
    [traceparameters_hbt_A(a)] = getTraceParam(hbt_A(a,:),fps,prefs);
    %Hbt Whisker Vein region 
    [traceparameters_hbt_V(a)] = getTraceParam(hbt_V(a,:),fps,prefs);
    %Hbt Whisker Parenchyma region 
    [traceparameters_hbt_P(a)] = getTraceParam(hbt_P(a,:),fps,prefs);
    %%%%% HBO 
    %Hbo Whisker region 
    [traceparameters_hbo_W(a)] = getTraceParam(hbo_W(a,:),fps,prefs);
    %Hbo Whisker Artery region 
    [traceparameters_hbo_A(a)] = getTraceParam(hbo_A(a,:),fps,prefs);
    %Hbo Whisker Vein region 
    [traceparameters_hbo_V(a)] = getTraceParam(hbo_V(a,:),fps,prefs);
    %Hbo Whisker Parenchyma region 
    [traceparameters_hbo_P(a)] = getTraceParam(hbo_P(a,:),fps,prefs);
    %%%%% HBR
    %Hbr Whisker region 
    [traceparameters_hbr_W(a)] = getTraceParam(hbr_W(a,:),fps,prefs);
    %Hbr Whisker Artery region 
    [traceparameters_hbr_A(a)] = getTraceParam(hbr_A(a,:),fps,prefs);
    %Hbr Whisker Vein region 
    [traceparameters_hbr_V(a)] = getTraceParam(hbr_V(a,:),fps,prefs);
    %Hbr Whisker Parenchyma region 
    [traceparameters_hbr_P(a)] = getTraceParam(hbr_P(a,:),fps,prefs);
end
clear a

%% categorise each stim trial by loco condition 

%%%%%assign each trial a number i.e.
%1 No loco throughout
%2 Loco b4 stim, not during
%3 No loco b4 stim, loco during
%4 Loco throughout

%create vector to show when stim is on
stim = zeros(1,size(locomotion,2));
%decided to say stim occurred for 4s for categorising the 'loco during' as
%extending slightly beyond stim end
stim(:,[find(time>=5,1):find(time>=10,1)])=1; %7 is when stim ends
%figure;plot(time,stim);

for n = 1:size(locomotion,1)

    [runCat(n,:)] = catStimByLoco(locomotion(n,:), ...
        stim, fps, locoPrefs);

    %categorise into the 4 groups (ignoring run after basically)
    %1 b4, and during stim
    if size(find(runCat(n,1:2)),2)==2
        locoGrp(n,1) = 4;
        %not running
    elseif isempty(find(runCat(n,1:2)))
        locoGrp(n,1) = 1;
    elseif size(find(runCat(n,1:2)),2)==1
        %run b4 only
        if find(runCat(n,1:2))==2
            locoGrp(n,1)=3;
            %run during only
        elseif find(runCat(n,1:2))==1
            locoGrp(n,1)=2;
        end
    end

end %end of loop locotrials


%figure to show Hbt plotted by diff loco grps (sanity check)
figure;

%%%%% LOCO
subplot(241);
plot(time,mean(locomotion(find(locoGrp==1),:),1));
hold on;
plot(time,stim,'k','LineWidth',2);
xlabel('Time(s)');
ylabel('Loco (AU)');
title('Loco Grp 1: No loco b4 or during stim')
xlim([time(1) time(end)]);
ylim([0 4.5]); 

subplot(242);
plot(time,mean(locomotion(find(locoGrp==2),:),1));
hold on;
plot(time,stim,'k','LineWidth',2);
xlabel('Time(s)');
ylabel('Loco (AU)');
title('Loco Grp 2: Loco b4 stim, not during')
xlim([time(1) time(end)]);
ylim([0 4.5]); 

subplot(243);
plot(time,mean(locomotion(find(locoGrp==3),:),1));
hold on;
plot(time,stim,'k','LineWidth',2);
xlabel('Time(s)');
ylabel('Loco (AU)');
title('Loco Grp 3: Loco during stim, not b4')
xlim([time(1) time(end)]);
ylim([0 4.5]); 

subplot(244);
plot(time,mean(locomotion(find(locoGrp==4),:),1));
hold on;
plot(time,stim,'k','LineWidth',2);
xlabel('Time(s)');
ylabel('Loco (AU)');
title('Loco Grp 3: Loco b4 + during stim')
xlim([time(1) time(end)]);
ylim([0 4.5]); 

%%%%% HBT
subplot(245);
hold on; 
shadedErrorBar(time,mean(hbt_W(find(locoGrp==1),:),1),...
    getSEM(hbt_W(find(locoGrp==1),:),1));
xlabel('Time(s)');
ylabel('Hbt');
xlim([time(1) time(end)]);
plot([5 5],[-2 4],'k--');
plot([7 7],[-2 4],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 4]); 

subplot(246);
hold on; 
shadedErrorBar(time,mean(hbt_W(find(locoGrp==2),:),1),...
    getSEM(hbt_W(find(locoGrp==2),:),1));
xlabel('Time(s)');
ylabel('Hbt');
xlim([time(1) time(end)]);
plot([5 5],[-2 4],'k--');
plot([7 7],[-2 4],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 4]); 

subplot(247);
hold on; 
shadedErrorBar(time,mean(hbt_W(find(locoGrp==3),:),1),...
    getSEM(hbt_W(find(locoGrp==3),:),1));
xlabel('Time(s)');
ylabel('Hbt');
xlim([time(1) time(end)]);
plot([5 5],[-2 4],'k--');
plot([7 7],[-2 4],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 4]);  

subplot(248);
hold on; 
shadedErrorBar(time,mean(hbt_W(find(locoGrp==4),:),1),...
    getSEM(hbt_W(find(locoGrp==4),:),1));
xlabel('Time(s)');
ylabel('Hbt');
xlim([time(1) time(end)]);
plot([5 5],[-2 4],'k--');
plot([7 7],[-2 4],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 4]); 

%% Make data tables for R stats / plots

%save table with metrics for stats in R 
for a = 1:size(grpID,1) %loop individual trials

    %LOCO
    loco_AUC(a,1) = traceparameters_loco(a).AUC;
    loco_wholeTrial_AUC(a,1) = traceparameters_loco_wholeTrial(a).AUC;
    %HBT
    hbt_W_AUC(a,1) = traceparameters_hbt_W(a).AUC;
    hbt_W_maxpk(a,1) = traceparameters_hbt_W(a).maxPk;
    hbt_W_t2p(a,1) = traceparameters_hbt_W(a).t2p;
    hbt_W_t2o(a,1) = traceparameters_hbt_W(a).t2o;
    hbt_A_AUC(a,1) = traceparameters_hbt_A(a).AUC;
    hbt_A_maxpk(a,1) = traceparameters_hbt_A(a).maxPk;
    hbt_A_t2p(a,1) = traceparameters_hbt_A(a).t2p;
    hbt_A_t2o(a,1) = traceparameters_hbt_A(a).t2o;
    hbt_V_AUC(a,1) = traceparameters_hbt_V(a).AUC;
    hbt_V_maxpk(a,1) = traceparameters_hbt_V(a).maxPk;
    hbt_V_t2p(a,1) = traceparameters_hbt_V(a).t2p;
    hbt_V_t2o(a,1) = traceparameters_hbt_V(a).t2o;
    hbt_P_AUC(a,1) = traceparameters_hbt_P(a).AUC;
    hbt_P_maxpk(a,1) = traceparameters_hbt_P(a).maxPk;
    hbt_P_t2p(a,1) = traceparameters_hbt_P(a).t2p;
    hbt_P_t2o(a,1) = traceparameters_hbt_P(a).t2o;
    %HBO
    hbo_W_AUC(a,1) = traceparameters_hbo_W(a).AUC;
    hbo_W_maxpk(a,1) = traceparameters_hbo_W(a).maxPk;
    hbo_W_t2p(a,1) = traceparameters_hbo_W(a).t2p;
    hbo_W_t2o(a,1) = traceparameters_hbo_W(a).t2o;
    hbo_A_AUC(a,1) = traceparameters_hbo_A(a).AUC;
    hbo_A_maxpk(a,1) = traceparameters_hbo_A(a).maxPk;
    hbo_A_t2p(a,1) = traceparameters_hbo_A(a).t2p;
    hbo_A_t2o(a,1) = traceparameters_hbo_A(a).t2o;
    hbo_V_AUC(a,1) = traceparameters_hbo_V(a).AUC;
    hbo_V_maxpk(a,1) = traceparameters_hbo_V(a).maxPk;
    hbo_V_t2p(a,1) = traceparameters_hbo_V(a).t2p;
    hbo_V_t2o(a,1) = traceparameters_hbo_V(a).t2o;
    hbo_P_AUC(a,1) = traceparameters_hbo_P(a).AUC;
    hbo_P_maxpk(a,1) = traceparameters_hbo_P(a).maxPk;
    hbo_P_t2p(a,1) = traceparameters_hbo_P(a).t2p;
    hbo_P_t2o(a,1) = traceparameters_hbo_P(a).t2o;
    %HBR
    hbr_W_AUC(a,1) = traceparameters_hbr_W(a).AUC;
    hbr_W_maxpk(a,1) = traceparameters_hbr_W(a).maxPk;
    hbr_W_t2p(a,1) = traceparameters_hbr_W(a).t2p;
    hbr_W_t2o(a,1) = traceparameters_hbr_W(a).t2o;
    hbr_A_AUC(a,1) = traceparameters_hbr_A(a).AUC;
    hbr_A_maxpk(a,1) = traceparameters_hbr_A(a).maxPk;
    hbr_A_t2p(a,1) = traceparameters_hbr_A(a).t2p;
    hbr_A_t2o(a,1) = traceparameters_hbr_A(a).t2o;
    hbr_V_AUC(a,1) = traceparameters_hbr_V(a).AUC;
    hbr_V_maxpk(a,1) = traceparameters_hbr_V(a).maxPk;
    hbr_V_t2p(a,1) = traceparameters_hbr_V(a).t2o;
    hbr_V_t2o(a,1) = traceparameters_hbr_V(a).t2o;
    hbr_P_AUC(a,1) = traceparameters_hbr_P(a).AUC;
    hbr_P_maxpk(a,1) = traceparameters_hbr_P(a).maxPk;
    hbr_P_t2p(a,1) = traceparameters_hbr_P(a).t2p;
    hbr_P_t2o(a,1) = traceparameters_hbr_P(a).t2o;

end %end of loop individual trials

T = table(animalID, sex, grpID, sessID, expID, trialID, ...
    locoGrp, loco_AUC, loco_wholeTrial_AUC,...
    hbt_W_AUC, hbt_W_maxpk, hbt_W_t2p, hbt_W_t2o, ...
    hbt_A_AUC, hbt_A_maxpk, hbt_A_t2p, hbt_A_t2o, ...
    hbt_V_AUC, hbt_V_maxpk, hbt_V_t2p, hbt_V_t2o, ...
    hbt_P_AUC, hbt_P_maxpk, hbt_P_t2p, hbt_P_t2o, ...
    hbo_W_AUC, hbo_W_maxpk, hbo_W_t2p, hbo_W_t2o, ...
    hbo_A_AUC, hbo_A_maxpk, hbo_A_t2p, hbo_A_t2o, ...
    hbo_V_AUC, hbo_V_maxpk, hbo_V_t2p, hbo_V_t2o, ...
    hbo_P_AUC, hbo_P_maxpk, hbo_P_t2p, hbo_P_t2o,...
    hbr_W_AUC, hbr_W_maxpk, hbr_W_t2p, hbr_W_t2o, ...
    hbr_A_AUC, hbr_A_maxpk, hbr_A_t2p, hbr_A_t2o, ...
    hbr_V_AUC, hbr_V_maxpk, hbr_V_t2p, hbr_V_t2o, ...
    hbr_P_AUC, hbr_P_maxpk, hbr_P_t2p, hbr_P_t2o);
writetable(T,[cd,filesep,'2sStim_data4LMM.xlsx']); 

%also save variables needed for plotting
save([cd,filesep,'2sStimData_indTrials.mat'],...
    'T','hbt_W','hbt_A','hbt_V','hbt_P','hbo_W','hbo_A','hbo_V','hbo_P',...
    'hbr_W','hbr_A','hbr_V','hbr_P','locomotion','loco_AUC',...
    'loco_wholeTrial_AUC','time');
