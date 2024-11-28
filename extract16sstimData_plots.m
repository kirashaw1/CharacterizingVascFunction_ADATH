
% Figures for 16s stim mixed disease model project

%% load data
clear all; close all; 
cd('U:\Kira\Projects\Beth_MixedDiseaseModels\Data\Exp3_16sStim')
load('16sStimData_indTrials.mat')

%% figure 1: Plot stim responses separated by disease model
% NB/ collapsed across all loco conditions and trials/exp days 
figure;

%%%%% WHISKER
subplot(441);
hold on; 
plot(time, mean(hbt_W(find(T.grpID==1),:),1),'g'); 
plot(time, mean(hbo_W(find(T.grpID==1),:),1),'r'); 
plot(time, mean(hbr_W(find(T.grpID==1),:),1),'b'); 
legend('Hbt','HbO','Hbr', 'AutoUpdate', 'off');
shadedErrorBar(time, mean(hbt_W(find(T.grpID==1),:),1),...
    getSEM(hbt_W(find(T.grpID==1),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_W(find(T.grpID==1),:),1),...
    getSEM(hbo_W(find(T.grpID==1),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_W(find(T.grpID==1),:),1),...
    getSEM(hbr_W(find(T.grpID==1),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 4],'k--');
plot([26 26],[-2 4],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 4]); 
title('Grp1, Whisker ROI')

subplot(442);
hold on; 
plot(time, mean(hbt_W(find(T.grpID==2),:),1),'g'); 
plot(time, mean(hbo_W(find(T.grpID==2),:),1),'r'); 
plot(time, mean(hbr_W(find(T.grpID==2),:),1),'b'); 
shadedErrorBar(time, mean(hbt_W(find(T.grpID==2),:),1),...
    getSEM(hbt_W(find(T.grpID==2),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_W(find(T.grpID==2),:),1),...
    getSEM(hbo_W(find(T.grpID==2),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_W(find(T.grpID==2),:),1),...
    getSEM(hbr_W(find(T.grpID==2),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 4],'k--');
plot([26 26],[-2 4],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 4]); 
title('Grp2, Whisker ROI')

subplot(443);
hold on; 
plot(time, mean(hbt_W(find(T.grpID==3),:),1),'g'); 
plot(time, mean(hbo_W(find(T.grpID==3),:),1),'r'); 
plot(time, mean(hbr_W(find(T.grpID==3),:),1),'b'); 
shadedErrorBar(time, mean(hbt_W(find(T.grpID==3),:),1),...
    getSEM(hbt_W(find(T.grpID==3),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_W(find(T.grpID==3),:),1),...
    getSEM(hbo_W(find(T.grpID==3),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_W(find(T.grpID==3),:),1),...
    getSEM(hbr_W(find(T.grpID==2),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 4],'k--');
plot([26 26],[-2 4],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 4]); 
title('Grp3, Whisker ROI')

subplot(444);
hold on; 
plot(time, mean(hbt_W(find(T.grpID==4),:),1),'g'); 
plot(time, mean(hbo_W(find(T.grpID==4),:),1),'r'); 
plot(time, mean(hbr_W(find(T.grpID==4),:),1),'b'); 
shadedErrorBar(time, mean(hbt_W(find(T.grpID==4),:),1),...
    getSEM(hbt_W(find(T.grpID==4),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_W(find(T.grpID==4),:),1),...
    getSEM(hbo_W(find(T.grpID==4),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_W(find(T.grpID==4),:),1),...
    getSEM(hbr_W(find(T.grpID==4),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 4],'k--');
plot([26 26],[-2 4],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 4]); 
title('Grp4, Whisker ROI')

%%%%%% ART
subplot(445);
hold on; 
plot(time, mean(hbt_A(find(T.grpID==1),:),1),'g'); 
plot(time, mean(hbo_A(find(T.grpID==1),:),1),'r'); 
plot(time, mean(hbr_A(find(T.grpID==1),:),1),'b'); 
shadedErrorBar(time, mean(hbt_A(find(T.grpID==1),:),1),...
    getSEM(hbt_A(find(T.grpID==1),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_A(find(T.grpID==1),:),1),...
    getSEM(hbo_A(find(T.grpID==1),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_A(find(T.grpID==1),:),1),...
    getSEM(hbr_A(find(T.grpID==1),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 4],'k--');
plot([26 26],[-2 4],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 4]); 
title('Grp1, Artery ROI')

subplot(446);
hold on; 
plot(time, mean(hbt_A(find(T.grpID==2),:),1),'g'); 
plot(time, mean(hbo_A(find(T.grpID==2),:),1),'r'); 
plot(time, mean(hbr_A(find(T.grpID==2),:),1),'b'); 
shadedErrorBar(time, mean(hbt_A(find(T.grpID==2),:),1),...
    getSEM(hbt_A(find(T.grpID==2),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_A(find(T.grpID==2),:),1),...
    getSEM(hbo_A(find(T.grpID==2),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_A(find(T.grpID==2),:),1),...
    getSEM(hbr_A(find(T.grpID==2),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 4],'k--');
plot([26 26],[-2 4],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 4]); 
title('Grp2, Artery ROI')

subplot(447);
hold on; 
plot(time, mean(hbt_A(find(T.grpID==3),:),1),'g'); 
plot(time, mean(hbo_A(find(T.grpID==3),:),1),'r'); 
plot(time, mean(hbr_A(find(T.grpID==3),:),1),'b'); 
shadedErrorBar(time, mean(hbt_A(find(T.grpID==3),:),1),...
    getSEM(hbt_A(find(T.grpID==3),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_A(find(T.grpID==3),:),1),...
    getSEM(hbo_A(find(T.grpID==3),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_A(find(T.grpID==3),:),1),...
    getSEM(hbr_A(find(T.grpID==2),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 4],'k--');
plot([26 26],[-2 4],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 4]); 
title('Grp3, Artery ROI')

subplot(448);
hold on; 
plot(time, mean(hbt_A(find(T.grpID==4),:),1),'g'); 
plot(time, mean(hbo_A(find(T.grpID==4),:),1),'r'); 
plot(time, mean(hbr_A(find(T.grpID==4),:),1),'b'); 
shadedErrorBar(time, mean(hbt_A(find(T.grpID==4),:),1),...
    getSEM(hbt_A(find(T.grpID==4),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_A(find(T.grpID==4),:),1),...
    getSEM(hbo_A(find(T.grpID==4),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_A(find(T.grpID==4),:),1),...
    getSEM(hbr_A(find(T.grpID==4),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 4],'k--');
plot([26 26],[-2 4],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 4]); 
title('Grp4, Artery ROI')

%%%%%% VEIN
subplot(449);
hold on; 
plot(time, mean(hbt_V(find(T.grpID==1),:),1),'g'); 
plot(time, mean(hbo_V(find(T.grpID==1),:),1),'r'); 
plot(time, mean(hbr_V(find(T.grpID==1),:),1),'b'); 
shadedErrorBar(time, mean(hbt_V(find(T.grpID==1),:),1),...
    getSEM(hbt_V(find(T.grpID==1),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_V(find(T.grpID==1),:),1),...
    getSEM(hbo_V(find(T.grpID==1),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_V(find(T.grpID==1),:),1),...
    getSEM(hbr_V(find(T.grpID==1),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 4],'k--');
plot([26 26],[-2 4],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 4]); 
title('Grp1, Vein ROI')

subplot(4,4,10);
hold on; 
plot(time, mean(hbt_V(find(T.grpID==2),:),1),'g'); 
plot(time, mean(hbo_V(find(T.grpID==2),:),1),'r'); 
plot(time, mean(hbr_V(find(T.grpID==2),:),1),'b'); 
shadedErrorBar(time, mean(hbt_V(find(T.grpID==2),:),1),...
    getSEM(hbt_V(find(T.grpID==2),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_V(find(T.grpID==2),:),1),...
    getSEM(hbo_V(find(T.grpID==2),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_V(find(T.grpID==2),:),1),...
    getSEM(hbr_V(find(T.grpID==2),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 4],'k--');
plot([26 26],[-2 4],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 4]); 
title('Grp2, Vein ROI')

subplot(4,4,11);
hold on; 
plot(time, mean(hbt_V(find(T.grpID==3),:),1),'g'); 
plot(time, mean(hbo_V(find(T.grpID==3),:),1),'r'); 
plot(time, mean(hbr_V(find(T.grpID==3),:),1),'b'); 
shadedErrorBar(time, mean(hbt_V(find(T.grpID==3),:),1),...
    getSEM(hbt_V(find(T.grpID==3),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_V(find(T.grpID==3),:),1),...
    getSEM(hbo_V(find(T.grpID==3),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_V(find(T.grpID==3),:),1),...
    getSEM(hbr_V(find(T.grpID==2),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 4],'k--');
plot([26 26],[-2 4],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 4]); 
title('Grp3, Vein ROI')

subplot(4,4,12);
hold on; 
plot(time, mean(hbt_V(find(T.grpID==4),:),1),'g'); 
plot(time, mean(hbo_V(find(T.grpID==4),:),1),'r'); 
plot(time, mean(hbr_V(find(T.grpID==4),:),1),'b'); 
shadedErrorBar(time, mean(hbt_V(find(T.grpID==4),:),1),...
    getSEM(hbt_V(find(T.grpID==4),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_V(find(T.grpID==4),:),1),...
    getSEM(hbo_V(find(T.grpID==4),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_V(find(T.grpID==4),:),1),...
    getSEM(hbr_V(find(T.grpID==4),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 4],'k--');
plot([26 26],[-2 4],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 4]); 
title('Grp4, Vein ROI')

%%%%%% PARENCHYMA
subplot(4,4,13);
hold on; 
plot(time, mean(hbt_P(find(T.grpID==1),:),1),'g'); 
plot(time, mean(hbo_P(find(T.grpID==1),:),1),'r'); 
plot(time, mean(hbr_P(find(T.grpID==1),:),1),'b'); 
shadedErrorBar(time, mean(hbt_P(find(T.grpID==1),:),1),...
    getSEM(hbt_P(find(T.grpID==1),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_P(find(T.grpID==1),:),1),...
    getSEM(hbo_P(find(T.grpID==1),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_P(find(T.grpID==1),:),1),...
    getSEM(hbr_P(find(T.grpID==1),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 4],'k--');
plot([26 26],[-2 4],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 4]); 
title('Grp1, Parenchyma ROI')

subplot(4,4,14);
hold on; 
plot(time, mean(hbt_P(find(T.grpID==2),:),1),'g'); 
plot(time, mean(hbo_P(find(T.grpID==2),:),1),'r'); 
plot(time, mean(hbr_P(find(T.grpID==2),:),1),'b'); 
shadedErrorBar(time, mean(hbt_P(find(T.grpID==2),:),1),...
    getSEM(hbt_P(find(T.grpID==2),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_P(find(T.grpID==2),:),1),...
    getSEM(hbo_P(find(T.grpID==2),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_P(find(T.grpID==2),:),1),...
    getSEM(hbr_P(find(T.grpID==2),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 4],'k--');
plot([26 26],[-2 4],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 4]); 
title('Grp2,Parenchyma ROI')

subplot(4,4,15);
hold on; 
plot(time, mean(hbt_P(find(T.grpID==3),:),1),'g'); 
plot(time, mean(hbo_P(find(T.grpID==3),:),1),'r'); 
plot(time, mean(hbr_P(find(T.grpID==3),:),1),'b'); 
shadedErrorBar(time, mean(hbt_P(find(T.grpID==3),:),1),...
    getSEM(hbt_P(find(T.grpID==3),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_P(find(T.grpID==3),:),1),...
    getSEM(hbo_P(find(T.grpID==3),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_P(find(T.grpID==3),:),1),...
    getSEM(hbr_P(find(T.grpID==2),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 4],'k--');
plot([26 26],[-2 4],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 4]); 
title('Grp3, Parenchyma ROI')

subplot(4,4,16);
hold on; 
plot(time, mean(hbt_P(find(T.grpID==4),:),1),'g'); 
plot(time, mean(hbo_P(find(T.grpID==4),:),1),'r'); 
plot(time, mean(hbr_P(find(T.grpID==4),:),1),'b'); 
shadedErrorBar(time, mean(hbt_P(find(T.grpID==4),:),1),...
    getSEM(hbt_P(find(T.grpID==4),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_P(find(T.grpID==4),:),1),...
    getSEM(hbo_P(find(T.grpID==4),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_P(find(T.grpID==4),:),1),...
    getSEM(hbr_P(find(T.grpID==4),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 4],'k--');
plot([26 26],[-2 4],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 4]); 
title('Grp4, Parenchyma ROI')

%% Supp figure 1: Plot stim responses separated by disease model for MALES ONLY
% NB/ collapsed across all loco conditions and trials/exp days 
figure;

%%%%% WHISKER
subplot(441);
hold on; 
plot(time, mean(hbt_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'r'); 
plot(time, mean(hbr_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'b'); 
legend('Hbt','HbO','Hbr', 'AutoUpdate', 'off');
shadedErrorBar(time, mean(hbt_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbt_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbo_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbr_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp1, Whisker ROI, Males')

subplot(442);
hold on; 
plot(time, mean(hbt_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'r'); 
plot(time, mean(hbr_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbt_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbo_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbr_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp2, Whisker ROI, Males')

subplot(443); %NB all male grp
hold on; 
plot(time, mean(hbt_W(intersect(find(T.grpID==3),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_W(intersect(find(T.grpID==3),find(T.sex==1)),:),1),'r'); 
plot(time, mean(hbr_W(intersect(find(T.grpID==3),find(T.sex==1)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_W(intersect(find(T.grpID==3),find(T.sex==1)),:),1),...
    getSEM(hbt_W(intersect(find(T.grpID==3),find(T.sex==1)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_W(intersect(find(T.grpID==3),find(T.sex==1)),:),1),...
    getSEM(hbo_W(intersect(find(T.grpID==3),find(T.sex==1)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_W(intersect(find(T.grpID==3),find(T.sex==1)),:),1),...
    getSEM(hbr_W(intersect(find(T.grpID==3),find(T.sex==1)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp3, Whisker ROI, Males')

subplot(444); %NB all male grp
hold on; 
plot(time, mean(hbt_W(intersect(find(T.grpID==4),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_W(find(T.grpID==4),:),1),'r'); 
plot(time, mean(hbr_W(find(T.grpID==4),:),1),'b'); 
shadedErrorBar(time, mean(hbt_W(find(T.grpID==4),:),1),...
    getSEM(hbt_W(find(T.grpID==4),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_W(find(T.grpID==4),:),1),...
    getSEM(hbo_W(find(T.grpID==4),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_W(find(T.grpID==4),:),1),...
    getSEM(hbr_W(find(T.grpID==4),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp4, Whisker ROI, Males')

%%%%%% ART
subplot(445);
hold on; 
plot(time, mean(hbt_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'r'); 
plot(time, mean(hbr_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbt_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbo_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbr_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp1, Artery ROI, Males')

subplot(446);
hold on; 
plot(time, mean(hbt_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'r'); 
plot(time, mean(hbr_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbt_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbo_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbr_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp2, Artery ROI, Males')

subplot(447);
hold on; 
plot(time, mean(hbt_A(find(T.grpID==3),:),1),'g'); 
plot(time, mean(hbo_A(find(T.grpID==3),:),1),'r'); 
plot(time, mean(hbr_A(find(T.grpID==3),:),1),'b'); 
shadedErrorBar(time, mean(hbt_A(find(T.grpID==3),:),1),...
    getSEM(hbt_A(find(T.grpID==3),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_A(find(T.grpID==3),:),1),...
    getSEM(hbo_A(find(T.grpID==3),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_A(find(T.grpID==3),:),1),...
    getSEM(hbr_A(find(T.grpID==2),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp3, Artery ROI, Males')

subplot(448);
hold on; 
plot(time, mean(hbt_A(find(T.grpID==4),:),1),'g'); 
plot(time, mean(hbo_A(find(T.grpID==4),:),1),'r'); 
plot(time, mean(hbr_A(find(T.grpID==4),:),1),'b'); 
shadedErrorBar(time, mean(hbt_A(find(T.grpID==4),:),1),...
    getSEM(hbt_A(find(T.grpID==4),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_A(find(T.grpID==4),:),1),...
    getSEM(hbo_A(find(T.grpID==4),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_A(find(T.grpID==4),:),1),...
    getSEM(hbr_A(find(T.grpID==4),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp4, Artery ROI, Males')

%%%%%% VEIN
subplot(449);
hold on; 
plot(time, mean(hbt_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'r'); 
plot(time, mean(hbr_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbt_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbo_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbr_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp1, Vein ROI, Males')

subplot(4,4,10);
hold on; 
plot(time, mean(hbt_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'r'); 
plot(time, mean(hbr_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbt_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbo_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbr_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp2, Vein ROI, Males')

subplot(4,4,11);
hold on; 
plot(time, mean(hbt_V(find(T.grpID==3),:),1),'g'); 
plot(time, mean(hbo_V(find(T.grpID==3),:),1),'r'); 
plot(time, mean(hbr_V(find(T.grpID==3),:),1),'b'); 
shadedErrorBar(time, mean(hbt_V(find(T.grpID==3),:),1),...
    getSEM(hbt_V(find(T.grpID==3),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_V(find(T.grpID==3),:),1),...
    getSEM(hbo_V(find(T.grpID==3),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_V(find(T.grpID==3),:),1),...
    getSEM(hbr_V(find(T.grpID==2),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp3, Vein ROI, Males')

subplot(4,4,12);
hold on; 
plot(time, mean(hbt_V(find(T.grpID==4),:),1),'g'); 
plot(time, mean(hbo_V(find(T.grpID==4),:),1),'r'); 
plot(time, mean(hbr_V(find(T.grpID==4),:),1),'b'); 
shadedErrorBar(time, mean(hbt_V(find(T.grpID==4),:),1),...
    getSEM(hbt_V(find(T.grpID==4),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_V(find(T.grpID==4),:),1),...
    getSEM(hbo_V(find(T.grpID==4),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_V(find(T.grpID==4),:),1),...
    getSEM(hbr_V(find(T.grpID==4),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp4, Vein ROI, Males')

%%%%%% PARENCHYMA
subplot(4,4,13);
hold on; 
plot(time, mean(hbt_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'r'); 
plot(time, mean(hbr_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbt_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbo_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbr_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp1, Parenchyma ROI, Males')

subplot(4,4,14);
hold on; 
plot(time, mean(hbt_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'r'); 
plot(time, mean(hbr_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbt_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbo_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbr_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp2, Parenchyma ROI, Males')

subplot(4,4,15);
hold on; 
plot(time, mean(hbt_P(find(T.grpID==3),:),1),'g'); 
plot(time, mean(hbo_P(find(T.grpID==3),:),1),'r'); 
plot(time, mean(hbr_P(find(T.grpID==3),:),1),'b'); 
shadedErrorBar(time, mean(hbt_P(find(T.grpID==3),:),1),...
    getSEM(hbt_P(find(T.grpID==3),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_P(find(T.grpID==3),:),1),...
    getSEM(hbo_P(find(T.grpID==3),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_P(find(T.grpID==3),:),1),...
    getSEM(hbr_P(find(T.grpID==2),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp3, Parenchyma ROI, Males')

subplot(4,4,16);
hold on; 
plot(time, mean(hbt_P(find(T.grpID==4),:),1),'g'); 
plot(time, mean(hbo_P(find(T.grpID==4),:),1),'r'); 
plot(time, mean(hbr_P(find(T.grpID==4),:),1),'b'); 
shadedErrorBar(time, mean(hbt_P(find(T.grpID==4),:),1),...
    getSEM(hbt_P(find(T.grpID==4),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_P(find(T.grpID==4),:),1),...
    getSEM(hbo_P(find(T.grpID==4),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_P(find(T.grpID==4),:),1),...
    getSEM(hbr_P(find(T.grpID==4),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp4, Parenchyma ROI, Males')

%% SUPP FIG 2, SEPARATE GRP 1 AND GRP 2 BY SEX
% NB/ collapsed across all loco conditions and trials/exp days 

figure;

%%%%% WHISKER
subplot(441);
hold on; 
plot(time, mean(hbt_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'r'); 
plot(time, mean(hbr_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'b'); 
legend('Hbt','HbO','Hbr', 'AutoUpdate', 'off');
shadedErrorBar(time, mean(hbt_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbt_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbo_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbr_W(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp1, Male, Whisker ROI')

subplot(442);
hold on; 
plot(time, mean(hbt_W(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'g'); 
plot(time, mean(hbo_W(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'r'); 
plot(time, mean(hbr_W(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_W(intersect(find(T.grpID==1),find(T.sex==2)),:),1),...
    getSEM(hbt_W(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_W(intersect(find(T.grpID==1),find(T.sex==2)),:),1),...
    getSEM(hbo_W(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_W(intersect(find(T.grpID==1),find(T.sex==2)),:),1),...
    getSEM(hbr_W(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp1, Female, Whisker ROI')

subplot(443);
hold on; 
plot(time, mean(hbt_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'r'); 
plot(time, mean(hbr_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbt_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbo_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbr_W(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp2, Male, Whisker ROI')

subplot(444);
hold on; 
plot(time, mean(hbt_W(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'g'); 
plot(time, mean(hbo_W(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'r'); 
plot(time, mean(hbr_W(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_W(intersect(find(T.grpID==2),find(T.sex==2)),:),1),...
    getSEM(hbt_W(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_W(intersect(find(T.grpID==2),find(T.sex==2)),:),1),...
    getSEM(hbo_W(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_W(intersect(find(T.grpID==2),find(T.sex==2)),:),1),...
    getSEM(hbr_W(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp2, Female, Whisker ROI')

%%%%%% ART
subplot(445);
hold on; 
plot(time, mean(hbt_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'r'); 
plot(time, mean(hbr_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbt_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbo_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbr_A(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp1, Male, Artery ROI')

subplot(446);
hold on; 
plot(time, mean(hbt_A(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'g'); 
plot(time, mean(hbo_A(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'r'); 
plot(time, mean(hbr_A(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_A(intersect(find(T.grpID==1),find(T.sex==2)),:),1),...
    getSEM(hbt_A(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_A(intersect(find(T.grpID==1),find(T.sex==2)),:),1),...
    getSEM(hbo_A(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_A(intersect(find(T.grpID==1),find(T.sex==2)),:),1),...
    getSEM(hbr_A(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp1, Female, Artery ROI')

subplot(447);
hold on; 
plot(time, mean(hbt_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'r'); 
plot(time, mean(hbr_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbt_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbo_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbr_A(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp2, Male, Artery ROI')

subplot(448);
hold on; 
plot(time, mean(hbt_A(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'g'); 
plot(time, mean(hbo_A(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'r'); 
plot(time, mean(hbr_A(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_A(intersect(find(T.grpID==2),find(T.sex==2)),:),1),...
    getSEM(hbt_A(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_A(intersect(find(T.grpID==2),find(T.sex==2)),:),1),...
    getSEM(hbo_A(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_A(intersect(find(T.grpID==2),find(T.sex==2)),:),1),...
    getSEM(hbr_A(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp2, Female, Artery ROI')

%%%%%% VEIN
subplot(449);
hold on; 
plot(time, mean(hbt_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'r'); 
plot(time, mean(hbr_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbt_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbo_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbr_V(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp1, Male, Vein ROI')

subplot(4,4,10);
hold on; 
plot(time, mean(hbt_V(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'g'); 
plot(time, mean(hbo_V(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'r'); 
plot(time, mean(hbr_V(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_V(intersect(find(T.grpID==1),find(T.sex==2)),:),1),...
    getSEM(hbt_V(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_V(intersect(find(T.grpID==1),find(T.sex==2)),:),1),...
    getSEM(hbo_V(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_V(intersect(find(T.grpID==1),find(T.sex==2)),:),1),...
    getSEM(hbr_V(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp1, Female, Vein ROI')

subplot(4,4,11);
hold on; 
plot(time, mean(hbt_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'r'); 
plot(time, mean(hbr_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbt_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbo_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbr_V(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp2, Male, Vein ROI')

subplot(4,4,12);
hold on; 
plot(time, mean(hbt_V(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'g'); 
plot(time, mean(hbo_V(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'r'); 
plot(time, mean(hbr_V(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_V(intersect(find(T.grpID==2),find(T.sex==2)),:),1),...
    getSEM(hbt_V(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_V(intersect(find(T.grpID==2),find(T.sex==2)),:),1),...
    getSEM(hbo_V(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_V(intersect(find(T.grpID==2),find(T.sex==2)),:),1),...
    getSEM(hbr_V(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp2, Female, Vein ROI')

%%%%%% PARENCHYMA
subplot(4,4,13);
hold on; 
plot(time, mean(hbt_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'r'); 
plot(time, mean(hbr_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbt_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbo_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),...
    getSEM(hbr_P(intersect(find(T.grpID==1),find(T.sex==1)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp1, Male, Parenchyma ROI')

subplot(4,4,14);
hold on; 
plot(time, mean(hbt_P(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'g'); 
plot(time, mean(hbo_P(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'r'); 
plot(time, mean(hbr_P(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_P(intersect(find(T.grpID==1),find(T.sex==2)),:),1),...
    getSEM(hbt_P(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_P(intersect(find(T.grpID==1),find(T.sex==2)),:),1),...
    getSEM(hbo_P(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_P(intersect(find(T.grpID==1),find(T.sex==2)),:),1),...
    getSEM(hbr_P(intersect(find(T.grpID==1),find(T.sex==2)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp1, Female, Parenchyma ROI')

subplot(4,4,15);
hold on; 
plot(time, mean(hbt_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'g'); 
plot(time, mean(hbo_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'r'); 
plot(time, mean(hbr_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbt_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbo_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),...
    getSEM(hbr_P(intersect(find(T.grpID==2),find(T.sex==1)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp2, Male, Parenchyma ROI')

subplot(4,4,16);
hold on; 
plot(time, mean(hbt_P(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'g'); 
plot(time, mean(hbo_P(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'r'); 
plot(time, mean(hbr_P(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'b'); 
shadedErrorBar(time, mean(hbt_P(intersect(find(T.grpID==2),find(T.sex==2)),:),1),...
    getSEM(hbt_P(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'lineprops','g'); 
shadedErrorBar(time, mean(hbo_P(intersect(find(T.grpID==2),find(T.sex==2)),:),1),...
    getSEM(hbo_P(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'lineprops','r'); 
shadedErrorBar(time, mean(hbr_P(intersect(find(T.grpID==2),find(T.sex==2)),:),1),...
    getSEM(hbr_P(intersect(find(T.grpID==2),find(T.sex==2)),:),1),'lineprops','b'); 
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 25],[0 0],'k--');
ylim([-2 5]); 
title('Grp2, Female, Parenchyma ROI')

%% Figure 2 - Impact of loco on haem responses

% rank the loco AUC in ascending order and plot top and bottom 10% of
% walking trials
%sort loco events in ascending order, i.e. from lowest loco AUC to highest
[~,locoInd] = sort(loco_AUC, 'ascend');
%reorder hbt and loco trace responses according to lowest to most loco index
hbt_W_locoSort = hbt_W(locoInd,:);
hbt_A_locoSort = hbt_A(locoInd,:);
hbt_V_locoSort = hbt_V(locoInd,:);
hbt_P_locoSort = hbt_P(locoInd,:);
loco_locoSort = locomotion(locoInd,:);

figure;
subplot(151)
imagesc(time,[],loco_locoSort,[-20 20]);
title('Locomotion sorted in ascending order');
ylabel('Individual Locomotion Events');
xlabel('Time(s)');
colorbar;
subplot(152)
imagesc(time,[],hbt_W_locoSort);
xlabel('Time(s)');
%cLimits = get(gca,'CLim');
colorbar;
title('Corresponding Whisker Hbt');
subplot(153)
imagesc(time,[],hbt_A_locoSort);
xlabel('Time(s)');
colorbar;
title('Corresponding Artery Hbt');
subplot(154)
imagesc(time,[],hbt_V_locoSort);
xlabel('Time(s)');
colorbar;
title('Corresponding Vein Hbt');
subplot(155)
imagesc(time,[],hbt_P_locoSort);
xlabel('Time(s)');
colorbar;
title('Corresponding Parenchyma Hbt');

%plot top and bottom 10% walking trials for Hbt traces
figure;
%BOTTOM 10%
subplot(211);
hold on;
title('Bottom 10% walking trials');
plot(time, mean(hbt_W_locoSort([1:round(size(hbt_W_locoSort,1)/10)],:),1),'g');
plot(time, mean(hbt_A_locoSort([1:round(size(hbt_W_locoSort,1)/10)],:),1),'r');
plot(time, mean(hbt_V_locoSort([1:round(size(hbt_W_locoSort,1)/10)],:),1),'b');
plot(time, mean(hbt_P_locoSort([1:round(size(hbt_W_locoSort,1)/10)],:),1),'k');
legend('Whisker','Artery','Vein','Parenchyma','AutoUpdate','Off');
shadedErrorBar(time, mean(hbt_W_locoSort([1:round(size(hbt_W_locoSort,1)/10)],:),1), ...
    getSEM(hbt_W_locoSort([1:round(size(hbt_W_locoSort,1)/10)],:),1),'lineprops','g');
shadedErrorBar(time, mean(hbt_A_locoSort([1:round(size(hbt_W_locoSort,1)/10)],:),1), ...
    getSEM(hbt_A_locoSort([1:round(size(hbt_W_locoSort,1)/10)],:),1),'lineprops','r');
shadedErrorBar(time, mean(hbt_V_locoSort([1:round(size(hbt_W_locoSort,1)/10)],:),1), ...
    getSEM(hbt_V_locoSort([1:round(size(hbt_W_locoSort,1)/10)],:),1),'lineprops','b');
shadedErrorBar(time, mean(hbt_P_locoSort([1:round(size(hbt_W_locoSort,1)/10)],:),1), ...
    getSEM(hbt_P_locoSort([1:round(size(hbt_W_locoSort,1)/10)],:),1),'lineprops','k');
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 9],'k--');
plot([26 26],[-2 9],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 9]); 
%TOP 10%
subplot(212);
hold on;
title('Top 10% walking trials');
shadedErrorBar(time, mean(hbt_W_locoSort([size(hbt_W_locoSort,1)-...
    round(size(hbt_W_locoSort,1)/10):end],:),1), ...
    getSEM(hbt_W_locoSort([size(hbt_W_locoSort,1)-...
    round(size(hbt_W_locoSort,1)/10):end],:),1),'lineprops','g');
shadedErrorBar(time, mean(hbt_A_locoSort([size(hbt_W_locoSort,1)-...
    round(size(hbt_W_locoSort,1)/10):end],:),1), ...
    getSEM(hbt_A_locoSort([size(hbt_W_locoSort,1)-...
    round(size(hbt_W_locoSort,1)/10):end],:),1),'lineprops','r');
shadedErrorBar(time, mean(hbt_V_locoSort([size(hbt_W_locoSort,1)-...
    round(size(hbt_W_locoSort,1)/10):end],:),1), ...
    getSEM(hbt_V_locoSort([size(hbt_W_locoSort,1)-...
    round(size(hbt_W_locoSort,1)/10):end],:),1),'lineprops','b');
shadedErrorBar(time, mean(hbt_P_locoSort([size(hbt_W_locoSort,1)-...
    round(size(hbt_W_locoSort,1)/10):end],:),1), ...
    getSEM(hbt_P_locoSort([size(hbt_W_locoSort,1)-...
    round(size(hbt_W_locoSort,1)/10):end],:),1),'lineprops','k');
xlabel('Time(s)');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 9],'k--');
plot([26 26],[-2 9],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 9]); 



% show the different disease groups walk different amounts: 
load('walking_totals_n77_exp3.mat','all_walk_distance');
groupCode = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,...
    2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,...
    3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,...
    4,4,4,4,4,4,4,4,4,4];

figure;
hold on;
plot(all_walk_distance(find(groupCode==1),:)','m');
plot(all_walk_distance(find(groupCode==2),:)','g');
plot(all_walk_distance(find(groupCode==3),:)','b');
plot(all_walk_distance(find(groupCode==4),:)','k');
ylabel('Distance Walked (AU)');

time_t = [0:(size(all_walk_distance,2)-1)]/8;
figure;
hold on;
plot(time_t,mean(all_walk_distance(find(groupCode==1),:),1),'m');
plot(time_t,mean(all_walk_distance(find(groupCode==2),:),1),'g');
plot(time_t,mean(all_walk_distance(find(groupCode==3),:),1),'b');
plot(time_t,mean(all_walk_distance(find(groupCode==4),:),1),'k');
legend('Grp1','Grp2','Grp3','Grp4','AutoUpdate','Off');
shadedErrorBar(time_t,mean(all_walk_distance(find(groupCode==1),:),1),...
    getSEM(all_walk_distance(find(groupCode==1),:),1),'lineprops','m');
shadedErrorBar(time_t,mean(all_walk_distance(find(groupCode==2),:),1),...
    getSEM(all_walk_distance(find(groupCode==2),:),1),'lineprops','g');
shadedErrorBar(time_t,mean(all_walk_distance(find(groupCode==3),:),1),...
    getSEM(all_walk_distance(find(groupCode==3),:),1),'lineprops','b');
shadedErrorBar(time_t,mean(all_walk_distance(find(groupCode==4),:),1),...
    getSEM(all_walk_distance(find(groupCode==4),:),1),'lineprops','k');
ylabel('Distance Walked (AU)');
xlabel('Time(s)');

%% Figure 3 - Separate stim responses by disease group AND locomotion condition

figure;

%loco grp 1, loco plot
subplot(5,4,1);
hold on; 
shadedErrorBar(time,mean(locomotion(find(T.locoGrp==1),:),1),...
    getSEM(locomotion(find(T.locoGrp==1),:),1),'lineprops','k');
ylabel('AU');
xlim([time(1) time(end)]);
plot([10 10],[0 1],'k--');
plot([26 26],[0 1],'k--');
plot([0 70],[0 0],'k--');
title('Loco Cond 1: Locomotion Trace');

%loco grp 2, loco plot
subplot(5,4,2);
hold on; 
shadedErrorBar(time,mean(locomotion(find(T.locoGrp==2),:),1),...
    getSEM(locomotion(find(T.locoGrp==2),:),1),'lineprops','k');
xlim([time(1) time(end)]);
plot([10 10],[0 1],'k--');
plot([26 26],[0 1],'k--');
plot([0 70],[0 0],'k--');
title('Loco Cond 2: Locomotion Trace');

%loco grp 3, loco plot
subplot(5,4,3);
hold on; 
shadedErrorBar(time,mean(locomotion(find(T.locoGrp==3),:),1),...
    getSEM(locomotion(find(T.locoGrp==3),:),1),'lineprops','k');
xlim([time(1) time(end)]);
plot([10 10],[0 1],'k--');
plot([26 26],[0 1],'k--');
plot([0 70],[0 0],'k--');
title('Loco Cond 3: Locomotion Trace');

%loco grp 4, loco plot
subplot(5,4,4);
hold on; 
shadedErrorBar(time,mean(locomotion(find(T.locoGrp==4),:),1),...
    getSEM(locomotion(find(T.locoGrp==4),:),1),'lineprops','k');
xlim([time(1) time(end)]);
plot([10 10],[0 1],'k--');
plot([26 26],[0 1],'k--');
plot([0 70],[0 0],'k--');
title('Loco Cond 4: Locomotion Trace');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Loco Grp 1, Hbt Whisker Plot, sep by disease group
subplot(5,4,5);
hold on; 
plot(time,mean(hbt_W(intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),'m');
plot(time,mean(hbt_W(intersect(find(T.locoGrp==1),find(T.grpID==2)),:),1),'g');
plot(time,mean(hbt_W(intersect(find(T.locoGrp==1),find(T.grpID==3)),:),1),'b');
plot(time,mean(hbt_W(intersect(find(T.locoGrp==1),find(T.grpID==4)),:),1),'k');
legend('Grp1','Grp2','Grp3','Grp4','AutoUpdate','Off');
shadedErrorBar(time,mean(hbt_W(...
    intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),getSEM(hbt_W(...
    intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),'lineprops','m');
shadedErrorBar(time,mean(hbt_W(...
    intersect(find(T.locoGrp==1),find(T.grpID==2)),:),1),getSEM(hbt_W(...
    intersect(find(T.locoGrp==1),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time,mean(hbt_W(...
    intersect(find(T.locoGrp==1),find(T.grpID==3)),:),1),getSEM(hbt_W(...
    intersect(find(T.locoGrp==1),find(T.grpID==3)),:),1),'lineprops','b');
shadedErrorBar(time,mean(hbt_W(...
    intersect(find(T.locoGrp==1),find(T.grpID==4)),:),1),getSEM(hbt_W(...
    intersect(find(T.locoGrp==1),find(T.grpID==4)),:),1),'lineprops','k');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 
title('Whisker Hbt');

%Loco Grp 2, Hbt Whisker Plot, sep by disease group
subplot(5,4,6);
hold on; 
if size(intersect(find(T.locoGrp==2),find(T.grpID==1)),1)>1
    shadedErrorBar(time,mean(hbt_W(...
        intersect(find(T.locoGrp==2),find(T.grpID==1)),:),1),getSEM(hbt_W(...
        intersect(find(T.locoGrp==2),find(T.grpID==1)),:),1),'lineprops','m');
end
shadedErrorBar(time,mean(hbt_W(...
    intersect(find(T.locoGrp==2),find(T.grpID==2)),:),1),getSEM(hbt_W(...
    intersect(find(T.locoGrp==2),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time,mean(hbt_W(...
    intersect(find(T.locoGrp==2),find(T.grpID==3)),:),1),getSEM(hbt_W(...
    intersect(find(T.locoGrp==2),find(T.grpID==3)),:),1),'lineprops','b');
shadedErrorBar(time,mean(hbt_W(...
    intersect(find(T.locoGrp==2),find(T.grpID==4)),:),1),getSEM(hbt_W(...
    intersect(find(T.locoGrp==2),find(T.grpID==4)),:),1),'lineprops','k');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 
title('Whisker Hbt');


%Loco Grp 3, Hbt Whisker Plot, sep by disease group
subplot(5,4,7);
hold on; 
shadedErrorBar(time,mean(hbt_W(...
    intersect(find(T.locoGrp==3),find(T.grpID==1)),:),1),getSEM(hbt_W(...
    intersect(find(T.locoGrp==3),find(T.grpID==1)),:),1),'lineprops','m');
shadedErrorBar(time,mean(hbt_W(...
    intersect(find(T.locoGrp==3),find(T.grpID==2)),:),1),getSEM(hbt_W(...
    intersect(find(T.locoGrp==3),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time,mean(hbt_W(...
    intersect(find(T.locoGrp==3),find(T.grpID==3)),:),1),getSEM(hbt_W(...
    intersect(find(T.locoGrp==3),find(T.grpID==3)),:),1),'lineprops','b');
shadedErrorBar(time,mean(hbt_W(...
    intersect(find(T.locoGrp==3),find(T.grpID==4)),:),1),getSEM(hbt_W(...
    intersect(find(T.locoGrp==3),find(T.grpID==4)),:),1),'lineprops','k');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 
title('Whisker Hbt');

%Loco Grp 4, Hbt Whisker Plot, sep by disease group
subplot(5,4,8);
hold on; 
shadedErrorBar(time,mean(hbt_W(...
    intersect(find(T.locoGrp==4),find(T.grpID==1)),:),1),getSEM(hbt_W(...
    intersect(find(T.locoGrp==4),find(T.grpID==1)),:),1),'lineprops','m');
shadedErrorBar(time,mean(hbt_W(...
    intersect(find(T.locoGrp==4),find(T.grpID==2)),:),1),getSEM(hbt_W(...
    intersect(find(T.locoGrp==4),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time,mean(hbt_W(...
    intersect(find(T.locoGrp==4),find(T.grpID==3)),:),1),getSEM(hbt_W(...
    intersect(find(T.locoGrp==4),find(T.grpID==3)),:),1),'lineprops','b');
shadedErrorBar(time,mean(hbt_W(...
    intersect(find(T.locoGrp==4),find(T.grpID==4)),:),1),getSEM(hbt_W(...
    intersect(find(T.locoGrp==4),find(T.grpID==4)),:),1),'lineprops','k');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 
title('Whisker Hbt');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Loco Grp 1, Hbt Artery Plot, sep by disease group
subplot(5,4,9);
hold on; 
shadedErrorBar(time,mean(hbt_A(...
    intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),getSEM(hbt_A(...
    intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),'lineprops','m');
shadedErrorBar(time,mean(hbt_A(...
    intersect(find(T.locoGrp==1),find(T.grpID==2)),:),1),getSEM(hbt_A(...
    intersect(find(T.locoGrp==1),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time,mean(hbt_A(...
    intersect(find(T.locoGrp==1),find(T.grpID==3)),:),1),getSEM(hbt_A(...
    intersect(find(T.locoGrp==1),find(T.grpID==3)),:),1),'lineprops','b');
shadedErrorBar(time,mean(hbt_A(...
    intersect(find(T.locoGrp==1),find(T.grpID==4)),:),1),getSEM(hbt_A(...
    intersect(find(T.locoGrp==1),find(T.grpID==4)),:),1),'lineprops','k');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-4 7],'k--');
plot([26 26],[-4 7],'k--');
plot([0 70],[0 0],'k--');
ylim([-4 7]); 
title('Artery Hbt');

%Loco Grp 2, Hbt Artery Plot, sep by disease group
subplot(5,4,10);
hold on; 
if size(intersect(find(T.locoGrp==2),find(T.grpID==1)),1)>1
    shadedErrorBar(time,mean(hbt_A(...
        intersect(find(T.locoGrp==2),find(T.grpID==1)),:),1),getSEM(hbt_A(...
        intersect(find(T.locoGrp==2),find(T.grpID==1)),:),1),'lineprops','m');
end
shadedErrorBar(time,mean(hbt_A(...
    intersect(find(T.locoGrp==2),find(T.grpID==2)),:),1),getSEM(hbt_A(...
    intersect(find(T.locoGrp==2),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time,mean(hbt_A(...
    intersect(find(T.locoGrp==2),find(T.grpID==3)),:),1),getSEM(hbt_A(...
    intersect(find(T.locoGrp==2),find(T.grpID==3)),:),1),'lineprops','b');
shadedErrorBar(time,mean(hbt_A(...
    intersect(find(T.locoGrp==2),find(T.grpID==4)),:),1),getSEM(hbt_A(...
    intersect(find(T.locoGrp==2),find(T.grpID==4)),:),1),'lineprops','k');
xlim([time(1) time(end)]);
plot([10 10],[-4 7],'k--');
plot([26 26],[-4 7],'k--');
plot([0 70],[0 0],'k--');
ylim([-4 7]); 
title('Artery Hbt');

%Loco Grp 3, Hbt Artery Plot, sep by disease group
subplot(5,4,11);
hold on; 
shadedErrorBar(time,mean(hbt_A(...
    intersect(find(T.locoGrp==3),find(T.grpID==1)),:),1),getSEM(hbt_A(...
    intersect(find(T.locoGrp==3),find(T.grpID==1)),:),1),'lineprops','m');
shadedErrorBar(time,mean(hbt_A(...
    intersect(find(T.locoGrp==3),find(T.grpID==2)),:),1),getSEM(hbt_A(...
    intersect(find(T.locoGrp==3),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time,mean(hbt_A(...
    intersect(find(T.locoGrp==3),find(T.grpID==3)),:),1),getSEM(hbt_A(...
    intersect(find(T.locoGrp==3),find(T.grpID==3)),:),1),'lineprops','b');
shadedErrorBar(time,mean(hbt_A(...
    intersect(find(T.locoGrp==3),find(T.grpID==4)),:),1),getSEM(hbt_A(...
    intersect(find(T.locoGrp==3),find(T.grpID==4)),:),1),'lineprops','k');
xlim([time(1) time(end)]);
plot([10 10],[-4 7],'k--');
plot([26 26],[-4 7],'k--');
plot([0 70],[0 0],'k--');
ylim([-4 7]); 
title('Artery Hbt');

%Loco Grp 4, Hbt Artery Plot, sep by disease group
subplot(5,4,12);
hold on; 
shadedErrorBar(time,mean(hbt_A(...
    intersect(find(T.locoGrp==4),find(T.grpID==1)),:),1),getSEM(hbt_A(...
    intersect(find(T.locoGrp==4),find(T.grpID==1)),:),1),'lineprops','m');
shadedErrorBar(time,mean(hbt_A(...
    intersect(find(T.locoGrp==4),find(T.grpID==2)),:),1),getSEM(hbt_A(...
    intersect(find(T.locoGrp==4),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time,mean(hbt_A(...
    intersect(find(T.locoGrp==4),find(T.grpID==3)),:),1),getSEM(hbt_A(...
    intersect(find(T.locoGrp==4),find(T.grpID==3)),:),1),'lineprops','b');
shadedErrorBar(time,mean(hbt_A(...
    intersect(find(T.locoGrp==4),find(T.grpID==4)),:),1),getSEM(hbt_A(...
    intersect(find(T.locoGrp==4),find(T.grpID==4)),:),1),'lineprops','k');
xlim([time(1) time(end)]);
plot([10 10],[-4 7],'k--');
plot([26 26],[-4 7],'k--');
plot([0 70],[0 0],'k--');
ylim([-4 7]); 
title('Artery Hbt');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Loco Grp 1, Hbt Vein Plot, sep by disease group
subplot(5,4,13);
hold on; 
shadedErrorBar(time,mean(hbt_V(...
    intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),getSEM(hbt_V(...
    intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),'lineprops','m');
shadedErrorBar(time,mean(hbt_V(...
    intersect(find(T.locoGrp==1),find(T.grpID==2)),:),1),getSEM(hbt_V(...
    intersect(find(T.locoGrp==1),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time,mean(hbt_V(...
    intersect(find(T.locoGrp==1),find(T.grpID==3)),:),1),getSEM(hbt_V(...
    intersect(find(T.locoGrp==1),find(T.grpID==3)),:),1),'lineprops','b');
shadedErrorBar(time,mean(hbt_V(...
    intersect(find(T.locoGrp==1),find(T.grpID==4)),:),1),getSEM(hbt_V(...
    intersect(find(T.locoGrp==1),find(T.grpID==4)),:),1),'lineprops','k');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 
title('Vein Hbt');

%Loco Grp 2, Hbt Artery Plot, sep by disease group
subplot(5,4,14);
hold on; 
if size(intersect(find(T.locoGrp==2),find(T.grpID==1)),1)>1
    shadedErrorBar(time,mean(hbt_V(...
        intersect(find(T.locoGrp==2),find(T.grpID==1)),:),1),getSEM(hbt_V(...
        intersect(find(T.locoGrp==2),find(T.grpID==1)),:),1),'lineprops','m');
end
shadedErrorBar(time,mean(hbt_V(...
    intersect(find(T.locoGrp==2),find(T.grpID==2)),:),1),getSEM(hbt_V(...
    intersect(find(T.locoGrp==2),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time,mean(hbt_V(...
    intersect(find(T.locoGrp==2),find(T.grpID==3)),:),1),getSEM(hbt_V(...
    intersect(find(T.locoGrp==2),find(T.grpID==3)),:),1),'lineprops','b');
shadedErrorBar(time,mean(hbt_V(...
    intersect(find(T.locoGrp==2),find(T.grpID==4)),:),1),getSEM(hbt_V(...
    intersect(find(T.locoGrp==2),find(T.grpID==4)),:),1),'lineprops','k');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 
title('Vein Hbt');

%Loco Grp 3, Hbt Artery Plot, sep by disease group
subplot(5,4,15);
hold on; 
shadedErrorBar(time,mean(hbt_V(...
    intersect(find(T.locoGrp==3),find(T.grpID==1)),:),1),getSEM(hbt_V(...
    intersect(find(T.locoGrp==3),find(T.grpID==1)),:),1),'lineprops','m');
shadedErrorBar(time,mean(hbt_V(...
    intersect(find(T.locoGrp==3),find(T.grpID==2)),:),1),getSEM(hbt_V(...
    intersect(find(T.locoGrp==3),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time,mean(hbt_V(...
    intersect(find(T.locoGrp==3),find(T.grpID==3)),:),1),getSEM(hbt_V(...
    intersect(find(T.locoGrp==3),find(T.grpID==3)),:),1),'lineprops','b');
shadedErrorBar(time,mean(hbt_V(...
    intersect(find(T.locoGrp==3),find(T.grpID==4)),:),1),getSEM(hbt_V(...
    intersect(find(T.locoGrp==3),find(T.grpID==4)),:),1),'lineprops','k');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 
title('Vein Hbt');

%Loco Grp 4, Hbt Artery Plot, sep by disease group
subplot(5,4,16);
hold on; 
shadedErrorBar(time,mean(hbt_V(...
    intersect(find(T.locoGrp==4),find(T.grpID==1)),:),1),getSEM(hbt_V(...
    intersect(find(T.locoGrp==4),find(T.grpID==1)),:),1),'lineprops','m');
shadedErrorBar(time,mean(hbt_V(...
    intersect(find(T.locoGrp==4),find(T.grpID==2)),:),1),getSEM(hbt_V(...
    intersect(find(T.locoGrp==4),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time,mean(hbt_V(...
    intersect(find(T.locoGrp==4),find(T.grpID==3)),:),1),getSEM(hbt_V(...
    intersect(find(T.locoGrp==4),find(T.grpID==3)),:),1),'lineprops','b');
shadedErrorBar(time,mean(hbt_V(...
    intersect(find(T.locoGrp==4),find(T.grpID==4)),:),1),getSEM(hbt_V(...
    intersect(find(T.locoGrp==4),find(T.grpID==4)),:),1),'lineprops','k');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 
title('Vein Hbt');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Loco Grp 1, Hbt Parenchyma Plot, sep by disease group
subplot(5,4,17);
hold on; 
shadedErrorBar(time,mean(hbt_P(...
    intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),getSEM(hbt_P(...
    intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),'lineprops','m');
shadedErrorBar(time,mean(hbt_P(...
    intersect(find(T.locoGrp==1),find(T.grpID==2)),:),1),getSEM(hbt_P(...
    intersect(find(T.locoGrp==1),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time,mean(hbt_P(...
    intersect(find(T.locoGrp==1),find(T.grpID==3)),:),1),getSEM(hbt_P(...
    intersect(find(T.locoGrp==1),find(T.grpID==3)),:),1),'lineprops','b');
shadedErrorBar(time,mean(hbt_P(...
    intersect(find(T.locoGrp==1),find(T.grpID==4)),:),1),getSEM(hbt_P(...
    intersect(find(T.locoGrp==1),find(T.grpID==4)),:),1),'lineprops','k');
ylabel('Micromolar Change');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 
xlabel('Time(s)')
title('Parenchyma Hbt');

%Loco Grp 2, Hbt Artery Plot, sep by disease group
subplot(5,4,18);
hold on; 
if size(intersect(find(T.locoGrp==2),find(T.grpID==1)),1)>1
    shadedErrorBar(time,mean(hbt_P(...
        intersect(find(T.locoGrp==2),find(T.grpID==1)),:),1),getSEM(hbt_P(...
        intersect(find(T.locoGrp==2),find(T.grpID==1)),:),1),'lineprops','m');
end
shadedErrorBar(time,mean(hbt_P(...
    intersect(find(T.locoGrp==2),find(T.grpID==2)),:),1),getSEM(hbt_P(...
    intersect(find(T.locoGrp==2),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time,mean(hbt_P(...
    intersect(find(T.locoGrp==2),find(T.grpID==3)),:),1),getSEM(hbt_P(...
    intersect(find(T.locoGrp==2),find(T.grpID==3)),:),1),'lineprops','b');
shadedErrorBar(time,mean(hbt_P(...
    intersect(find(T.locoGrp==2),find(T.grpID==4)),:),1),getSEM(hbt_P(...
    intersect(find(T.locoGrp==2),find(T.grpID==4)),:),1),'lineprops','k');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 
xlabel('Time(s)')
title('Parenchyma Hbt');

%Loco Grp 3, Hbt Artery Plot, sep by disease group
subplot(5,4,19);
hold on; 
shadedErrorBar(time,mean(hbt_P(...
    intersect(find(T.locoGrp==3),find(T.grpID==1)),:),1),getSEM(hbt_P(...
    intersect(find(T.locoGrp==3),find(T.grpID==1)),:),1),'lineprops','m');
shadedErrorBar(time,mean(hbt_P(...
    intersect(find(T.locoGrp==3),find(T.grpID==2)),:),1),getSEM(hbt_P(...
    intersect(find(T.locoGrp==3),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time,mean(hbt_P(...
    intersect(find(T.locoGrp==3),find(T.grpID==3)),:),1),getSEM(hbt_P(...
    intersect(find(T.locoGrp==3),find(T.grpID==3)),:),1),'lineprops','b');
shadedErrorBar(time,mean(hbt_P(...
    intersect(find(T.locoGrp==3),find(T.grpID==4)),:),1),getSEM(hbt_P(...
    intersect(find(T.locoGrp==3),find(T.grpID==4)),:),1),'lineprops','k');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 
xlabel('Time(s)')
title('Parenchyma Hbt');

%Loco Grp 4, Hbt Artery Plot, sep by disease group
subplot(5,4,20);
hold on; 
shadedErrorBar(time,mean(hbt_P(...
    intersect(find(T.locoGrp==4),find(T.grpID==1)),:),1),getSEM(hbt_P(...
    intersect(find(T.locoGrp==4),find(T.grpID==1)),:),1),'lineprops','m');
shadedErrorBar(time,mean(hbt_P(...
    intersect(find(T.locoGrp==4),find(T.grpID==2)),:),1),getSEM(hbt_P(...
    intersect(find(T.locoGrp==4),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time,mean(hbt_P(...
    intersect(find(T.locoGrp==4),find(T.grpID==3)),:),1),getSEM(hbt_P(...
    intersect(find(T.locoGrp==4),find(T.grpID==3)),:),1),'lineprops','b');
shadedErrorBar(time,mean(hbt_P(...
    intersect(find(T.locoGrp==4),find(T.grpID==4)),:),1),getSEM(hbt_P(...
    intersect(find(T.locoGrp==4),find(T.grpID==4)),:),1),'lineprops','k');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 
xlabel('Time(s)')
title('Parenchyma Hbt');

%% Figure 4: Separate early (1-5) vs late (25-30) trials
% As animals run more in early trials, also need to separate by loco cond
% to get over confound of loco

% just look at early vs late trials, without separating by other variables
% (loco cond, disease grp, exp day)
EL_ind = [5 10]; %cut off for early (1) / late (2) trials
figure;

subplot(121);
hold on; 
title('Locomotion')
plot(time, mean(locomotion(find(T.trialID<=EL_ind(1)),:),1),'k');
plot(time, mean(locomotion(find(T.trialID>=EL_ind(2)),:),1),'r');
legend('Early Trials','Late Trials', 'AutoUpdate', 'Off');
shadedErrorBar(time, mean(locomotion(find(T.trialID<=EL_ind(1)),:),1),...
    getSEM(locomotion(find(T.trialID<=EL_ind(1)),:),1),'lineprops','k');
shadedErrorBar(time, mean(locomotion(find(T.trialID>=EL_ind(2)),:),1),...
    getSEM(locomotion(find(T.trialID>=EL_ind(2)),:),1),'lineprops','r');
ylabel('Locomotion (AU)'); 
xlabel('Time(s)')
xlim([time(1) time(end)]);
plot([10 10],[0 3],'k--');
plot([26 26],[0 3],'k--');
plot([0 70],[0 0],'k--');
ylim([0 3]); 

subplot(122);
hold on; 
title('Hbt Whisker ROI')
shadedErrorBar(time, mean(hbt_W(find(T.trialID<=EL_ind(1)),:),1),...
    getSEM(hbt_W(find(T.trialID<=EL_ind(1)),:),1),'lineprops','k');
shadedErrorBar(time, mean(hbt_W(find(T.trialID>=EL_ind(2)),:),1),...
    getSEM(hbt_W(find(T.trialID>=10),:),1),'lineprops','r');
ylabel('Micromolar change'); 
xlabel('Time(s)')
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 


% separate across disease and loco conditions
figure; 
% LOCOMOTION TRACES FOR EARLY TRIALS
subplot(4,4,1);
hold on; 
plot(time, mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==1))),:),1),'m');
plot(time, mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==2))),:),1),'g');
plot(time, mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==3))),:),1),'b');
plot(time, mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==4))),:),1),'k');
legend('Grp1','Grp2','Grp3','Grp4','AutoUpdate','Off');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==1))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==2))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==3))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==4))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Locomotion, Loco Cond 1, Early Trials (1-5)');
ylabel('Locomotion (AU)'); 
xlim([time(1) time(end)]);
plot([10 10],[0 10],'k--');
plot([26 26],[0 10],'k--');
plot([0 70],[0 0],'k--');
ylim([0 10]); 

subplot(4,4,2);
hold on; 
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==1))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==2))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==3))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==4))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Locomotion, Loco Cond 2, Early Trials (1-5)');
xlim([time(1) time(end)]);
plot([10 10],[0 10],'k--');
plot([26 26],[0 10],'k--');
plot([0 70],[0 0],'k--');
ylim([0 10]); 

subplot(4,4,3);
hold on; 
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==1))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==2))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==3))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==4))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Locomotion, Loco Cond 3, Early Trials (1-5)');
xlim([time(1) time(end)]);
plot([10 10],[0 10],'k--');
plot([26 26],[0 10],'k--');
plot([0 70],[0 0],'k--');
ylim([0 10]); 

subplot(4,4,4);
hold on; 
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==1))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==2))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==3))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==4))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Locomotion, Loco Cond 4, Early Trials (1-5)');
xlim([time(1) time(end)]);
plot([10 10],[0 10],'k--');
plot([26 26],[0 10],'k--');
plot([0 70],[0 0],'k--');
ylim([0 10]); 

%%%%%%% HBT WHISKER EARLY TRIALS
subplot(4,4,5);
hold on; 
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==1))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==2))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==3))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==4))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Hbt Whisker, Loco Cond 1, Early Trials (1-5)');
ylabel('Micromolar change'); 
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 

subplot(4,4,6);
hold on; 
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==1))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==2))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==3))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==4))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Hbt Whisker, Loco Cond 2, Early Trials (1-5)');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 

subplot(4,4,7);
hold on; 
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==1))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==2))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==3))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==4))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Hbt Whisker, Loco Cond 3, Early Trials (1-5)');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 

subplot(4,4,8);
hold on; 
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==1))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==2))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==3))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==4))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.trialID<=EL_ind(1)),find(T.grpID==4))),:),1),...find(T.trialID<=EL_ind(1))
    'lineprops','k');
title('Hbt Whisker, Loco Cond 4, Early Trials (1-5)');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 

% LOCOMOTION TRACES FOR LATE TRIALS
subplot(4,4,9);
hold on; 
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==1))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==2))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==3))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Locomotion, Loco Cond 1, Late Trials (10-15)');
ylabel('Locomotion (AU)'); 
xlim([time(1) time(end)]);
plot([10 10],[0 10],'k--');
plot([26 26],[0 10],'k--');
plot([0 70],[0 0],'k--');
ylim([0 10]); 

subplot(4,4,10);
hold on; 
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==1))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==2))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==3))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==3))),:),1),...
    'lineprops','b');
if size(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),1)>1
    shadedErrorBar(time, ...
        mean(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),:),1),...
        getSEM(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),:),1),...
        'lineprops','k');
end
title('Locomotion, Loco Cond 2, Late Trials (10-15)');
xlim([time(1) time(end)]);
plot([10 10],[0 10],'k--');
plot([26 26],[0 10],'k--');
plot([0 70],[0 0],'k--');
ylim([0 10]); 

subplot(4,4,11);
hold on; 
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==1))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==2))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==3))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Locomotion, Loco Cond 3, Late Trials (10-15)');
xlim([time(1) time(end)]);
plot([10 10],[0 10],'k--');
plot([26 26],[0 10],'k--');
plot([0 70],[0 0],'k--');
ylim([0 10]); 

subplot(4,4,12);
hold on; 
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==1))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==2))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==3))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Locomotion, Loco Cond 4, Late Trials (10-15)'); 
xlim([time(1) time(end)]);
plot([10 10],[0 10],'k--');
plot([26 26],[0 10],'k--');
plot([0 70],[0 0],'k--');
ylim([0 10]); 

%%%%%%% HBT WHISKER LATE TRIALS
subplot(4,4,13);
hold on; 
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==1))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==2))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==3))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Hbt Whisker, Loco Cond 1, Late Trials (10-15)');
ylabel('Micromolar change'); 
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 

subplot(4,4,14);
hold on; 
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==1))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==2))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==3))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==3))),:),1),...
    'lineprops','b');
if size(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),1)>1
    shadedErrorBar(time, ...
        mean(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),:),1),...
        getSEM(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),:),1),...
        'lineprops','k');
end
title('Hbt Whisker, Loco Cond 2, Late Trials (10-15)');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 

subplot(4,4,15);
hold on; 
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==1))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==2))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==3))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Hbt Whisker, Loco Cond 3, Late Trials (10-15)');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 

subplot(4,4,16);
hold on; 
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==1))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==2))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==3))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.trialID>=EL_ind(2)),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Hbt Whisker, Loco Cond 4, Late Trials (10-15)');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 

%% FIGURE 5 EXP ID
% Separate by exp day 1 and Exp Day 2 (rather than early vs late trials)


% just look at exp 1 vs exp 4, without separating by other variables
% (loco cond, disease grp, exp day)
figure;

subplot(121);
hold on; 
title('Locomotion')
plot(time, mean(locomotion(find(T.expID==1),:),1),'k');
plot(time, mean(locomotion(find(T.expID==2),:),1),'r');
legend('Exp D1','Exp D2', 'AutoUpdate', 'Off');
shadedErrorBar(time, mean(locomotion(find(T.expID==1),:),1),...
    getSEM(locomotion(find(T.expID==1),:),1),'lineprops','k');
shadedErrorBar(time, mean(locomotion(find(T.expID==2),:),1),...
    getSEM(locomotion(find(T.expID==2),:),1),'lineprops','r');
ylabel('Locomotion (AU)'); 
xlabel('Time(s)')
xlim([time(1) time(end)]);
plot([10 10],[0 3],'k--');
plot([26 26],[0 3],'k--');
plot([0 70],[0 0],'k--');
ylim([0 3]); 

subplot(122);
hold on; 
title('Hbt Whisker ROI')
shadedErrorBar(time, mean(hbt_W(find(T.expID==1),:),1),...
    getSEM(hbt_W(find(T.expID==1),:),1),'lineprops','k');
shadedErrorBar(time, mean(hbt_W(find(T.expID==2),:),1),...
    getSEM(hbt_W(find(T.expID==2),:),1),'lineprops','r');
ylabel('Micromolar change'); 
xlabel('Time(s)')
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 

figure; 
% LOCOMOTION TRACES FOR EXP DAY 1
subplot(4,4,1);
hold on; 
plot(time, mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==1))),:),1),'m');
plot(time, mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==2))),:),1),'g');
plot(time, mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==3))),:),1),'b');
plot(time, mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==4))),:),1),'k');
legend('Grp1','Grp2','Grp3','Grp4','AutoUpdate','Off');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==1))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==2))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==3))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==4))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Locomotion, Loco Cond 1, Exp Day 1');
ylabel('Locomotion (AU)'); 
xlim([time(1) time(end)]);
plot([10 10],[0 10],'k--');
plot([26 26],[0 10],'k--');
plot([0 70],[0 0],'k--');
ylim([0 10]); 

subplot(4,4,2);
hold on; 
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==1))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==2))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==2))),:),1),...
    'lineprops','g');
if size(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==3))),1)>1
    shadedErrorBar(time, ...
        mean(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==3))),:),1),...
        getSEM(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==3))),:),1),...
        'lineprops','b');
end
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==4))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Locomotion, Loco Cond 2, Exp Day 1');
xlim([time(1) time(end)]);
plot([10 10],[0 10],'k--');
plot([26 26],[0 10],'k--');
plot([0 70],[0 0],'k--');
ylim([0 10]); 

subplot(4,4,3);
hold on; 
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.expID==1),find(T.grpID==1))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.expID==1),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.expID==1),find(T.grpID==2))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.expID==1),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.expID==1),find(T.grpID==3))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.expID==1),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.expID==1),find(T.grpID==4))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.expID==1),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Locomotion, Loco Cond 3, Exp Day 1');
xlim([time(1) time(end)]);
plot([10 10],[0 10],'k--');
plot([26 26],[0 10],'k--');
plot([0 70],[0 0],'k--');
ylim([0 10]); 

subplot(4,4,4);
hold on; 
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.expID==1),find(T.grpID==1))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.expID==1),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.expID==1),find(T.grpID==2))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.expID==1),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.expID==1),find(T.grpID==3))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.expID==1),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.expID==1),find(T.grpID==4))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.expID==1),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Locomotion, Loco Cond 4, Exp Day 1');
xlim([time(1) time(end)]);
plot([10 10],[0 10],'k--');
plot([26 26],[0 10],'k--');
plot([0 70],[0 0],'k--');
ylim([0 10]); 

%%%%%%% HBT WHISKER EARLY TRIALS
subplot(4,4,5);
hold on; 
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==1))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==2))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==3))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==4))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.expID==1),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Hbt Whisker, Loco Cond 1, Exp Day 1');
ylabel('Micromolar change'); 
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 

subplot(4,4,6);
hold on; 
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==1))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==2))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==2))),:),1),...
    'lineprops','g');
if size(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==3))),1)>1
    shadedErrorBar(time, ...
        mean(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==3))),:),1),...
        getSEM(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==3))),:),1),...
        'lineprops','b');
end
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==4))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.expID==1),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Hbt Whisker, Loco Cond 2, Exp Day 1');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 

subplot(4,4,7);
hold on; 
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.expID==1),find(T.grpID==1))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.expID==1),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.expID==1),find(T.grpID==2))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.expID==1),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.expID==1),find(T.grpID==3))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.expID==1),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.expID==1),find(T.grpID==4))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.expID==1),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Hbt Whisker, Loco Cond 3, Exp Day 1');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 

subplot(4,4,8);
hold on; 
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.expID==1),find(T.grpID==1))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.expID==1),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.expID==1),find(T.grpID==2))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.expID==1),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.expID==1),find(T.grpID==3))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.expID==1),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.expID==1),find(T.grpID==4))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.expID==1),find(T.grpID==4))),:),1),...find(T.expID==1)
    'lineprops','k');
title('Hbt Whisker, Loco Cond 4, Exp Day 1');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 

% LOCOMOTION TRACES FOR Exp Day 2
subplot(4,4,9);
hold on; 
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==2),find(T.grpID==1))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==2),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==2),find(T.grpID==2))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==2),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==2),find(T.grpID==3))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==2),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==2),find(T.grpID==4))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==1),intersect(find(T.expID==2),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Locomotion, Loco Cond 1, Exp Day 2');
ylabel('Locomotion (AU)'); 
xlim([time(1) time(end)]);
plot([10 10],[0 10],'k--');
plot([26 26],[0 10],'k--');
plot([0 70],[0 0],'k--');
ylim([0 10]); 

subplot(4,4,10);
hold on; 
if size(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==1))),1)>1
    shadedErrorBar(time, ...
        mean(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==1))),:),1),...
        getSEM(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==1))),:),1),...
        'lineprops','m');
end
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==2))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==3))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==4))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Locomotion, Loco Cond 2, Exp Day 2');
xlim([time(1) time(end)]);
plot([10 10],[0 10],'k--');
plot([26 26],[0 10],'k--');
plot([0 70],[0 0],'k--');
ylim([0 10]); 

subplot(4,4,11);
hold on; 
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.expID==2),find(T.grpID==1))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.expID==2),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.expID==2),find(T.grpID==2))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.expID==2),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.expID==2),find(T.grpID==3))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.expID==2),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.expID==2),find(T.grpID==4))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==3),intersect(find(T.expID==2),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Locomotion, Loco Cond 3, Exp Day 2');
xlim([time(1) time(end)]);
plot([10 10],[0 10],'k--');
plot([26 26],[0 10],'k--');
plot([0 70],[0 0],'k--');
ylim([0 10]); 

subplot(4,4,12);
hold on; 
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.expID==2),find(T.grpID==1))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.expID==2),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.expID==2),find(T.grpID==2))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.expID==2),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.expID==2),find(T.grpID==3))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.expID==2),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.expID==2),find(T.grpID==4))),:),1),...
    getSEM(locomotion(intersect(find(T.locoGrp==4),intersect(find(T.expID==2),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Locomotion, Loco Cond 4, Exp Day 2'); 
xlim([time(1) time(end)]);
plot([10 10],[0 10],'k--');
plot([26 26],[0 10],'k--');
plot([0 70],[0 0],'k--');
ylim([0 10]); 

%%%%%%% HBT WHISKER LATE TRIALS
subplot(4,4,13);
hold on; 
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.expID==2),find(T.grpID==1))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.expID==2),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.expID==2),find(T.grpID==2))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.expID==2),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.expID==2),find(T.grpID==3))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.expID==2),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.expID==2),find(T.grpID==4))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),intersect(find(T.expID==2),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Hbt Whisker, Loco Cond 1, Exp Day 2');
ylabel('Micromolar change'); 
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 

subplot(4,4,14);
hold on; 
if size(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==1))),1)>1
    shadedErrorBar(time, ...
        mean(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==1))),:),1),...
        getSEM(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==1))),:),1),...
        'lineprops','m');
end
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==2))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==3))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==4))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==2),intersect(find(T.expID==2),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Hbt Whisker, Loco Cond 2, Exp Day 2');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 

subplot(4,4,15);
hold on; 
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.expID==2),find(T.grpID==1))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.expID==2),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.expID==2),find(T.grpID==2))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.expID==2),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.expID==2),find(T.grpID==3))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.expID==2),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.expID==2),find(T.grpID==4))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==3),intersect(find(T.expID==2),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Hbt Whisker, Loco Cond 3, Exp Day 2');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 

subplot(4,4,16);
hold on; 
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.expID==2),find(T.grpID==1))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.expID==2),find(T.grpID==1))),:),1),...
    'lineprops','m');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.expID==2),find(T.grpID==2))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.expID==2),find(T.grpID==2))),:),1),...
    'lineprops','g');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.expID==2),find(T.grpID==3))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.expID==2),find(T.grpID==3))),:),1),...
    'lineprops','b');
shadedErrorBar(time, ...
    mean(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.expID==2),find(T.grpID==4))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==4),intersect(find(T.expID==2),find(T.grpID==4))),:),1),...
    'lineprops','k');
title('Hbt Whisker, Loco Cond 4, Exp Day 2)');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-2 5],'k--');
plot([26 26],[-2 5],'k--');
plot([0 70],[0 0],'k--');
ylim([-2 5]); 


%% FIGURE 6 
% Take rest only trials to better compare the impact of:
% a) disease (4 levels: WT, AD, ATH, MIX)
% b) trial number (2 levels: early, late)
% c) experimental day (2 levels: 1, 4)

%%%% A) DISEASE
figure;

subplot(141);
hold on; 
title('Grp 1: AD, Rest Trials Only')
plot(time, mean(hbt_W(intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),'g');
plot(time, mean(hbo_W(intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),'r');
plot(time, mean(hbr_W(intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),'b');
legend('Hbt','HbO', 'Hbr','AutoUpdate','Off');
shadedErrorBar(time, mean(hbt_W(intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),'lineprops','g');
shadedErrorBar(time, mean(hbo_W(intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),...
    getSEM(hbo_W(intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),'lineprops','r');
shadedErrorBar(time, mean(hbr_W(intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),...
    getSEM(hbr_W(intersect(find(T.locoGrp==1),find(T.grpID==1)),:),1),'lineprops','b');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 

subplot(142);
hold on; 
title('Grp 2: WT, Rest Trials Only')
shadedErrorBar(time, mean(hbt_W(intersect(find(T.locoGrp==1),find(T.grpID==2)),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time, mean(hbo_W(intersect(find(T.locoGrp==1),find(T.grpID==2)),:),1),...
    getSEM(hbo_W(intersect(find(T.locoGrp==1),find(T.grpID==2)),:),1),'lineprops','r');
shadedErrorBar(time, mean(hbr_W(intersect(find(T.locoGrp==1),find(T.grpID==2)),:),1),...
    getSEM(hbr_W(intersect(find(T.locoGrp==1),find(T.grpID==2)),:),1),'lineprops','b');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 

subplot(143);
hold on; 
title('Grp 3: ATH, Rest Trials Only')
shadedErrorBar(time, mean(hbt_W(intersect(find(T.locoGrp==1),find(T.grpID==3)),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),find(T.grpID==3)),:),1),'lineprops','g');
shadedErrorBar(time, mean(hbo_W(intersect(find(T.locoGrp==1),find(T.grpID==3)),:),1),...
    getSEM(hbo_W(intersect(find(T.locoGrp==1),find(T.grpID==3)),:),1),'lineprops','r');
shadedErrorBar(time, mean(hbr_W(intersect(find(T.locoGrp==1),find(T.grpID==3)),:),1),...
    getSEM(hbr_W(intersect(find(T.locoGrp==1),find(T.grpID==3)),:),1),'lineprops','b');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 

subplot(144);
hold on; 
title('Grp 4: MIX, Rest Trials Only')
shadedErrorBar(time, mean(hbt_W(intersect(find(T.locoGrp==1),find(T.grpID==4)),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),find(T.grpID==4)),:),1),'lineprops','g');
shadedErrorBar(time, mean(hbo_W(intersect(find(T.locoGrp==1),find(T.grpID==4)),:),1),...
    getSEM(hbo_W(intersect(find(T.locoGrp==1),find(T.grpID==4)),:),1),'lineprops','r');
shadedErrorBar(time, mean(hbr_W(intersect(find(T.locoGrp==1),find(T.grpID==4)),:),1),...
    getSEM(hbr_W(intersect(find(T.locoGrp==1),find(T.grpID==4)),:),1),'lineprops','b');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 

%%%% B) TRIAL NUMBER
figure;

subplot(121);
hold on; 
title('Early Trials (1-5), Rest Trials Only')
plot(time, mean(hbt_W(intersect(find(T.locoGrp==1),find(T.trialID<=EL_ind(1))),:),1),'g');
plot(time, mean(hbo_W(intersect(find(T.locoGrp==1),find(T.trialID<=EL_ind(1))),:),1),'r');
plot(time, mean(hbr_W(intersect(find(T.locoGrp==1),find(T.trialID<=EL_ind(1))),:),1),'b');
legend('Hbt','HbO', 'Hbr','AutoUpdate','Off');
shadedErrorBar(time, mean(hbt_W(intersect(find(T.locoGrp==1),find(T.trialID<=EL_ind(1))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),find(T.trialID<=EL_ind(1))),:),1),'lineprops','g');
shadedErrorBar(time, mean(hbo_W(intersect(find(T.locoGrp==1),find(T.trialID<=EL_ind(1))),:),1),...
    getSEM(hbo_W(intersect(find(T.locoGrp==1),find(T.trialID<=EL_ind(1))),:),1),'lineprops','r');
shadedErrorBar(time, mean(hbr_W(intersect(find(T.locoGrp==1),find(T.trialID<=EL_ind(1))),:),1),...
    getSEM(hbr_W(intersect(find(T.locoGrp==1),find(T.trialID<=EL_ind(1))),:),1),'lineprops','b');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 

subplot(122);
hold on; 
title('Late Trials (10-15), Rest Trials Only')
shadedErrorBar(time, mean(hbt_W(intersect(find(T.locoGrp==1),find(T.trialID>=EL_ind(2))),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),find(T.trialID>=EL_ind(2))),:),1),'lineprops','g');
shadedErrorBar(time, mean(hbo_W(intersect(find(T.locoGrp==1),find(T.trialID>=EL_ind(2))),:),1),...
    getSEM(hbo_W(intersect(find(T.locoGrp==1),find(T.trialID>=EL_ind(2))),:),1),'lineprops','r');
shadedErrorBar(time, mean(hbr_W(intersect(find(T.locoGrp==1),find(T.trialID>=EL_ind(2))),:),1),...
    getSEM(hbr_W(intersect(find(T.locoGrp==1),find(T.trialID>=EL_ind(2))),:),1),'lineprops','b');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 

%%%% C) EXP DAY
figure;

subplot(121);
hold on; 
title('Exp D1, Rest Trials Only')
plot(time, mean(hbt_W(intersect(find(T.locoGrp==1),find(T.expID==1)),:),1),'g');
plot(time, mean(hbo_W(intersect(find(T.locoGrp==1),find(T.expID==1)),:),1),'r');
plot(time, mean(hbr_W(intersect(find(T.locoGrp==1),find(T.expID==1)),:),1),'b');
legend('Hbt','HbO', 'Hbr','AutoUpdate','Off');
shadedErrorBar(time, mean(hbt_W(intersect(find(T.locoGrp==1),find(T.expID==1)),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),find(T.expID==1)),:),1),'lineprops','g');
shadedErrorBar(time, mean(hbo_W(intersect(find(T.locoGrp==1),find(T.expID==1)),:),1),...
    getSEM(hbo_W(intersect(find(T.locoGrp==1),find(T.expID==1)),:),1),'lineprops','r');
shadedErrorBar(time, mean(hbr_W(intersect(find(T.locoGrp==1),find(T.expID==1)),:),1),...
    getSEM(hbr_W(intersect(find(T.locoGrp==1),find(T.expID==1)),:),1),'lineprops','b');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 

subplot(122);
hold on; 
title('Exp D2, Rest Trials Only')
shadedErrorBar(time, mean(hbt_W(intersect(find(T.locoGrp==1),find(T.expID==2)),:),1),...
    getSEM(hbt_W(intersect(find(T.locoGrp==1),find(T.expID==2)),:),1),'lineprops','g');
shadedErrorBar(time, mean(hbo_W(intersect(find(T.locoGrp==1),find(T.expID==2)),:),1),...
    getSEM(hbo_W(intersect(find(T.locoGrp==1),find(T.expID==2)),:),1),'lineprops','r');
shadedErrorBar(time, mean(hbr_W(intersect(find(T.locoGrp==1),find(T.expID==2)),:),1),...
    getSEM(hbr_W(intersect(find(T.locoGrp==1),find(T.expID==2)),:),1),'lineprops','b');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 

% D) EXPERIMENTAL DAY SEPARATED BY DISEASE
%%%% C) EXP DAY
figure;

subplot(421);
hold on; 
title('Exp D1, Rest Trials Only, Grp 1 AD')
plot(time, mean(hbt_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==1)),:),1),'g');
plot(time, mean(hbo_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==1)),:),1),'r');
plot(time, mean(hbr_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==1)),:),1),'b');
legend('Hbt','HbO', 'Hbr','AutoUpdate','Off');
shadedErrorBar(time, mean(hbt_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==1)),:),1),...
    getSEM(hbt_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==1)),:),1),'lineprops','g');
shadedErrorBar(time, mean(hbo_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==1)),:),1),...
    getSEM(hbo_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==1)),:),1),'lineprops','r');
shadedErrorBar(time, mean(hbr_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==1)),:),1),...
    getSEM(hbr_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==1)),:),1),'lineprops','b');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 

subplot(422);
hold on; 
title('Exp D2, Rest Trials Only, Grp 1 AD')
shadedErrorBar(time, mean(hbt_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==1)),:),1),...
    getSEM(hbt_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==1)),:),1),'lineprops','g');
shadedErrorBar(time, mean(hbo_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==1)),:),1),...
    getSEM(hbo_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==1)),:),1),'lineprops','r');
shadedErrorBar(time, mean(hbr_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==1)),:),1),...
    getSEM(hbr_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==1)),:),1),'lineprops','b');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 

subplot(423);
hold on; 
title('Exp D1, Rest Trials Only, Grp 2 WT')
shadedErrorBar(time, mean(hbt_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==2)),:),1),...
    getSEM(hbt_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time, mean(hbo_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==2)),:),1),...
    getSEM(hbo_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==2)),:),1),'lineprops','r');
shadedErrorBar(time, mean(hbr_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==2)),:),1),...
    getSEM(hbr_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==2)),:),1),'lineprops','b');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 

subplot(424);
hold on; 
title('Exp D2, Rest Trials Only, Grp 2 WT')
shadedErrorBar(time, mean(hbt_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==2)),:),1),...
    getSEM(hbt_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==2)),:),1),'lineprops','g');
shadedErrorBar(time, mean(hbo_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==2)),:),1),...
    getSEM(hbo_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==2)),:),1),'lineprops','r');
shadedErrorBar(time, mean(hbr_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==2)),:),1),...
    getSEM(hbr_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==2)),:),1),'lineprops','b');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 

subplot(425);
hold on; 
title('Exp D1, Rest Trials Only, Grp 3 ATH')
shadedErrorBar(time, mean(hbt_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==3)),:),1),...
    getSEM(hbt_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==3)),:),1),'lineprops','g');
shadedErrorBar(time, mean(hbo_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==3)),:),1),...
    getSEM(hbo_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==3)),:),1),'lineprops','r');
shadedErrorBar(time, mean(hbr_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==3)),:),1),...
    getSEM(hbr_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==3)),:),1),'lineprops','b');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 

subplot(426);
hold on; 
title('Exp D2, Rest Trials Only, Grp 3 ATH')
shadedErrorBar(time, mean(hbt_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==3)),:),1),...
    getSEM(hbt_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==3)),:),1),'lineprops','g');
shadedErrorBar(time, mean(hbo_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==3)),:),1),...
    getSEM(hbo_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==3)),:),1),'lineprops','r');
shadedErrorBar(time, mean(hbr_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==3)),:),1),...
    getSEM(hbr_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==3)),:),1),'lineprops','b');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 

subplot(427);
hold on; 
title('Exp D1, Rest Trials Only, Grp 4 MIX')
shadedErrorBar(time, mean(hbt_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==4)),:),1),...
    getSEM(hbt_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==4)),:),1),'lineprops','g');
shadedErrorBar(time, mean(hbo_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==4)),:),1),...
    getSEM(hbo_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==4)),:),1),'lineprops','r');
shadedErrorBar(time, mean(hbr_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==4)),:),1),...
    getSEM(hbr_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==1)),find(T.grpID==4)),:),1),'lineprops','b');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 

subplot(428);
hold on; 
title('Exp D2, Rest Trials Only, Grp 4 MIX')
shadedErrorBar(time, mean(hbt_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==4)),:),1),...
    getSEM(hbt_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==4)),:),1),'lineprops','g');
shadedErrorBar(time, mean(hbo_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==4)),:),1),...
    getSEM(hbo_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==4)),:),1),'lineprops','r');
shadedErrorBar(time, mean(hbr_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==4)),:),1),...
    getSEM(hbr_W(intersect(intersect(find(T.locoGrp==1),find(T.expID==2)),find(T.grpID==4)),:),1),'lineprops','b');
xlabel('Time(s)');
xlim([time(1) time(end)]);
plot([10 10],[-1 3],'k--');
plot([26 26],[-1 3],'k--');
plot([0 70],[0 0],'k--');
ylim([-1 3]); 









