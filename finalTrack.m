clc;clear all;close all;

Covid19TrackerByMak();

n=0;
poss=6;
while n~=poss
   

n=menu('Enter Operations You Want To Perform','1: Press 1.  To See Indias status',...
        '2: Press 2. To See Statewise Comparison In India :',...
        '3: Press 3.  To See Worlds Update  :','4: Press 4. To See Worlds Vs India :',...
        '5: Press 5. To See Analyse Covid Effetc Bases On SEIRD Model :',...
        '6: Exit');
    disp('                                                                  ');
   


switch n
    case 1
      runMe;
%       runAnalyse;
       
    case 2
   userPrompt = 'Type Kanhaiya/Press OK To Use This Covid Tracker In india :';
titleBar = 'This Covid Tracker Is Designed By  Kanhaiya';
defaultString = 'Kanhaiya Designed This Covid-19 tracker ';
%  = inputdlg(userPrompt, titleBar, 1, {defaultString});
nq = inputdlg(userPrompt, titleBar, 1, {defaultString});

death=[0 56 0 4 11 3 0 0 0 231 0 829 16 3 21 4 42 4 0 0 1577 0 1 0 281 0 7 0 39 160 0 103 49 0 155 2 269];
cured=[33 1809 1 55 653 179 64 0 0 6267 16 6169 750 61 774 141 608 515 43 0 13404 4 12 1 3262 0 497 10 1870 3786 0 7491 1065 153 3406 56 1281];
cases=[33 2757 1 329 2380 225 214 2 0 12910 55 13664 1131 185 1569 350 1959 795 49 0 47190 29 14 1 6371 0 1269 26 2045 6742 1 15512 1813 189 6017 244 3459];
length(death);
length(cured);
length(cases);
figure('units','normalized','outerposition',[0 0 1 1]);
subplot(221)
plot(death,cases,'r--');hold on;
plot(death,cured,'o');hold on;
plot(cases,cured,'*');hold on;
legend({'Death Vs Cases','Death Vs cured','Cases Vs Cured'})
title('State Wise Cases In India');
% subplot(212)
% xx=[33 2757 1 329 2380 225 214 2 0 12910 55 13664 1131 185 1569 350 1959 795 49 0 47190 29 14 1 6371 0 1269 26 2045 6742 1 15512 1813 189 6017 244 3459];
% pie(xx);
% legend({'Maharastra','TamilNadu','Gujrat','Delhi','rest India'});

Deaths = [231 1577 103 829];
Cureds = [6267 13404 7491 6169];
labels = {'Delhi','Maharastra','TamilNadu','Gujrat'};
X=1:length(Deaths);
figure('units','normalized','outerposition',[0 0 1 1]);
subplot(211)
pie(Deaths)
legend(labels)
title('Deaths Rate')
subplot(212)
pie(Cureds)
legend(labels)
title('Cured Rate')
Casess=[47190 15512 13664 12910,43398];
t=1:length(Casess);
labels = {'Maharastra','TamilNadu','Gujrat','Delhi','rest India'};
figure('units','normalized','outerposition',[0 0 1 1]);
pie(Casess)
legend(labels)
title('States Having 67 % Cases In India')
figure('units','normalized','outerposition',[0 0 1 1]);
worl=[5165481 132674];
labels = {'World','India'};
pie(worl)
legend(labels)
title('India Vs World Cases')
figure('units','normalized','outerposition',[0 0 1 1]);
worl=[336430 3867];
labels = {'World','India'};
pie(worl)
legend(labels)
title('India Vs World Death Rate')

% fs1=get(handles.samplingFreq,'string');
% fs=str2num(fs1);
       

    case 3
     addpath('C:\Users\DELL\Desktop\all_dataset\vovid_project\CV19')
addpath('C:\Users\DELL\Desktop\all_dataset\vovid_project\data')
%w1 - weigth for values, w2 - weight for derivatives, prn - print results
res = fitVirusCV19(@getDataWorld,'prn','on','jpg','on','jpres','-r300');
    case 4
       runAll;
    case 5
        figure('units','normalized','outerposition',[0 0 1 1]);
        makd;
        figure('units','normalized','outerposition',[0 0 1 1]);
        makd2;
       
    case 6
      disp('Exit');
      disp('                                                                ');
    otherwise
        disp('other value')
end
end