close all
addpath('C:\Users\DELL\Desktop\all_dataset\vovid_project\makcovid19')
addpath('C:\Users\DELL\Desktop\all_dataset\vovid_project\makdata')
%w1 - weigth for values, w2 - weight for derivatives, prn - print results
res = fitVirusCV19(@getDataIndia,'prn','on','jpg','on','jpres','-r300');

