smote_en = false;
hype_opt = true;
feats_all = false;
rt_fall  = false;
k        = 1;
     
%% example
% load(fullfile(pwd,'\csi_tool_matlab\Activity\feature_mats\features_final\lab2_smote.mat'));
% feature_mat=feature_mat_smote1; %178
% bestc=16384 ;  bestg = .08


%%
% bestc=16384 ;  bestg = .08
% feature_mat=feature_mat_lab2other;neighbours=3;bestc =2 ; bestg = 8;
% acc:82.3529  f1 score:81.6327, precision:83.3333, recall:80, fpr:11.1111 

% feature_mat=feature_mat_lab2me;bestc =32768 ; bestg = 0.1250;
% acc:88.8889  f1 score:86.5979, precision:85.7143, recall:87.5, fpr:11.1111 

% feature_mat=feature_mat_smote_kitchenme;bestc =32768 ;bestg = 64;
% acc:84.6154  f1 score:86.9565, precision:83.3333, recall:90.9091, fpr:15.3846 

% feature_mat=feature_mat_smote_kitchenother;bestc =8 ; bestg = 16;
% acc:85.7143  f1 score:86.747, precision:81.8182, recall:92.3077, fpr:21.4286 

% feature_mat = feature_mat_lab2_85_smote;neighbours=2;bestc=4096;bestg=128;
%  feature_mat = feature_mat_lab2_90_smote;neighbours=2;bestc=128;bestg=8;
% 95%
% feature_mat=feature_mat_lab2_99_smote;neighbours=2;bestc=512;bestg=128;


% feature_mat = feature_mat_smote_lab2_800;neighbours=2;bestc=512;bestg=4;
% feature_mat = feature_mat_smote_lab2_600;neighbours=2; bestc=32; bestg=32;
% feature_mat = feature_mat_smote_lab2_400;neighbours=2; bestc=2; bestg=16;
% feature_mat = feature_mat_smote_lab2_200;neighbours=2; bestc=256; bestg=4;

if (rt_fall)     
% feature_mat=feature_mat_kitchen1_rtfall_smote;neighbours=2;bestc=2000; bestg=.125;
% acc:82.9268  f1 score:82.9971, precision:84.2105, recall:81.8182 fpr:25
% 147
% feature_mat = feature_mat_kitchen2_rtfall_smote;neighbours=3;
% bestc=128; bestg=1;
% acc:85.7143  f1 score:88.2464, precision:83.871, recall:93.1034
% fpr:21.7391 163

% feature_mat=feature_mat_lab2_rtfall_smote;neighbours=2;bestc=32768;bestg=.0625;
% bestc=8192;bestg=.02;
% acc:76.4706  f1 score:81.8182, precision:77.1429, recall:87.0968
% fpr:33.3333 169

% feature_mat=feature_mat_corridor1_rtfall_smote;neighbours=2;bestc=32768; bestg=.5;
% acc:70.5882  f1 score:75.5906, precision:75, recall:76.1905, fpr:37.5
% 111
% feature_mat=[feature_mat_corridor2_rtfall_smote];neighbours=3;bestc=16; bestg=32;
% acc:86.2069  f1 score:87.6087, precision:86.6667, recall:88.5714
% fpr:14.2857  192

% feature_mat = feature_mat_bedroom1_rtfall_smote;neighbours=2;
% bestc=6; bestg=.05;
% acc:74.0741  f1 score:78.2222, precision:72.7273, recall:84.6154 fpr:28.5714  87 
% feature_mat= feature_mat_bedroom2_rtfall_smote;neighbours=3;bestc=8;bestg=4;
% bestc=4096;bestg = 0.5;
% acc:82.9787  f1 score:86.0832, precision:80.6452, recall:92.3077 fpr:30
% 156

% feature_mat=feature_mat_bathroom1_rtfall_smote;neighbours=2;bestc=64;bestg=2;
% acc:76.9231  f1 score:72.1805, precision:69.5652, recall:75 fpr:20.5882
% 187
%    feature_mat = feature_mat_bathroom2_rtfall_smote;neighbours=3;
%        bestc=8;bestg=16;
%    acc:86.3636  f1 score:85.9599, precision:86.2069, recall:85.7143
%    fpr:13.6364 163
end
   
  
% feature_mat = feature_mat_kitchen2_smote%(:,[2:14 ]); %180
% bestc=4096; bestg=8;%allfeats acc:94.5455  f1 score:94.5858, precision:92.5926, recall:96.6667
% bestc=128; bestg=25;%4 feats% acc:90.9091  f1 score:91.3319, precision:87.0968, recall:96, fpr:14.2857 

% feature_mat = feature_mat_kitchen1_smote%(:,2:14 );%177
% bestc=8192;bestg=4;%allfeats acc:96.2963  f1 score:95.7427, precision:95.8333, recall:95.6522
% bestc=4;  bestg=8;
% % bestc=256;bestg=64;neighbours = 2;
% acc:85.1852  f1 score:85.5713, precision:79.1667, recall:93.1034, fpr:19.3548

% feature_mat = feature_mat_corridor2_smote%(:,[2:14 ]);%175
% bestc=256; bestg=8;%all feats acc:94.3396  f1 score:95.0226, precision:93.3333, recall:96.7742
% acc:90.566  f1 score:93.1608, precision:90, recall:96.5517, fpr:14.2857 bestc=4096;bestg=1;neighbours = 2;

% feature_mat = feature_mat_corridor1_smote%(:,[2:14 ]);%124
% bestc=32768;bestg=4;%all feats acc:84.2105  f1 score:86.1461, precision:82.6087, recall:90
%  bestc=8;bestg=8;neighbours = 2;
% acc:86.8421  f1 score:91.3043, precision:84, recall:100, fpr:21.4286 



% feature_mat = feature_mat_lab2_smote;%(:,[1:13 16 ]); %178
% bestc=16384 ;  bestg = .08
% % bestc=32000;bestg=64;neighbours = 2;
% acc:88.8889  f1 score:91.5531, precision:87.5, recall:96, fpr:16.6667 

% feature_mat = feature_mat_bedroom2_smote%(:,[2:14 ]);%181
% bestc=128;bestg=4; %all feats acc:96.3636  f1 score:96.6667, precision:93.5484, recall:100
% bestc=128;bestg=4;neighbours = 3;          
% acc:85.4545  f1 score:86.6824, precision:81.4815, recall:92.5926, fpr:20.6897

% feature_mat = feature_mat_bedroom1_smote%(:,[2:14 ]);%133
% bestc=1024;bestg=1; %all feats acc:95  f1 score:95.8333, precision:92, recall:100
% bestc=1;bestg=128; acc:90  f1 score:90, precision:94.7368, recall:85.7143, fpr:4.34783 


% feature_mat = feature_mat_bathroom2_smote%(:,[2:14 ]);%185
% bestc=8192;bestg=2; %all feats acc:94.6429  f1 score:96.1538, precision:92.5926, recall:100
% bestc=8;bestg=256;neighbours = 3;
% acc:91.0714  f1 score:91.7275, precision:90.625, recall:92.8571, fpr:9.09091 
% bestc=64;bestg=128;

% feature_mat = feature_mat_bathroom1_smote%(:,[ 2: 14 ]);%172
% bestc=256; bestg=4;%all feats acc:96.1538  f1 score:97.9592, precision:96, recall:100
% bestc=1000; bestg=.5;
% acc:90.3846  f1 score:90.1961, precision:85.1852, recall:95.8333, fpr:14.2857 

% % bestc=8192;bestg=1;neighbours = 2;
% % acc:90.3846  f1 score:90.2256, precision:85.7143, recall:95.2381
% % bestc=30; bestg=1;

%%  same room 35 features

% feature_mat = feature_mat_lab2_final(:,[8 12 13 2 3 4 33]);


%% clean feature matrix
feature_mat( ~any(feature_mat,2), : )        = [];
feature_mat( ~any(feature_mat(:,1:end-3),2)&feature_mat(:,end)==2, : ) = [];
feature_mat((feature_mat(:,end)==2),end)     = 0;
feature_mat((feature_mat(:,end)==6),end)     = 1;

zeros_length = length(feature_mat((feature_mat(:,end)==0),end))
ones_length  = length(feature_mat((feature_mat(:,end)==1),end))

f1score_vec=zeros(1,10000);
acc_vec=zeros(1,10000);
recall_vec=zeros(1,10000);
precision_vec=zeros(1,10000);
fpr_vec = zeros(1,10000);
% fps_vec = zeros(1,10000);
% tns_vec = zeros(1,10000);
% fns_vec = zeros(1,10000);
for j= 1:k
    
    %%
    if(smote_en)
        [final_features,final_mark] = SMOTE(feature_mat(:,1:end-1),feature_mat(:,end), neighbours);
        feature_mat_smote  = [final_features final_mark];
        n                  = size(feature_mat_smote,1);
        ordering           = randperm(n);
        feature_mat_smote1 = feature_mat_smote(ordering, :);
        
        zeros_smote_length = length(feature_mat_smote1((feature_mat_smote1(:,end)==0),end))
        ones_smote_length  = length(feature_mat_smote1((feature_mat_smote1(:,end)==1),end))
        
        feature_mat1       = feature_mat_smote1(:,1:end-1);
        label_num_         = feature_mat_smote1(:,end    );
    else
        n = size(feature_mat,1);
        ordering = randperm(n);
        feature_mat = feature_mat(ordering, :);
        
        feature_mat1 = feature_mat(:,1:end-1);
        label_num_   = feature_mat(:,end    );
    end
    
    
    ind                                         = any(feature_mat1,2   );
    label_num1                                  = label_num_;
    label_num_(ind == 0 & label_num1 ~= 1)      = 0;
    label_num_(ind == 0 & label_num1 == 1)      = [];
    feature_mat1(ind == 0 & label_num1 == 1,:)  = [];
    labels                                      = label_num_;
    
    % 1. Start to max freq time/max freq to end time
    % 2. Power burst curve area above threshold/area below threshold
    % -3. Extreme frequency
    % 4. (Extreme) Torso frequency
    % 5. Std torso frequency
    % -6. Extreme frequency/Extreme torso frequency-
    % 7. Std extreme frequency
    % -8. Event duration (from PBC)
    % -9. Mean torso frequency
    % 10. Mean extreme frequency
    %-11. Spectral entropy (10 to max freq)
    %-12. Spectral entropy (1 to 10)
    %-13. Fractal dimension
    % 3 6 8 9 11 12 13 = kitchen, bed
    % 2 4 5 9 11 12 = corr, bath
    % all 10 11 12
    %% Features
    % 1. Start to max freq time/max freq to end time
    % 2. Power burst curve area above threshold/area below
    % threshold
    % 3. Extreme frequency
    % 4. (Extreme) Torso frequency
    % 5. Std torso frequency
    % 6. Extreme frequency/Extreme torso frequency
    % 7. Std extreme frequency
    % 8. Event duration (from PBC)
    % 9. Mean torso frequency
    %10. Mean extreme frequency
    %11. Spectral entropy (10-30)
    %12. Spectral entropy (1-10)
    %13. Fractal dimension
    %14. Spectral entropy (10-20)
    %15. Spectral entropy (20-30)
    %16. Spectral entropy (30-max freq)
    %17. Spectral entropy (1-5)
    %18. Spectral entropy (5-10)
    %19. Spectral entropy (10-15)
    %20. Spectral entropy (15-20)
    %21. Spectral entrapy (20-25)
    %22. Spectral entrapy (25-30)
    %23. Max relative power (10-30)
    %24. Max relative power (1-10)
    %25. Max relative power (10-20)
    %26. Max relative power (20-30)
    %27. Max relative power (30-max)
    %28. Max relative power (1-5)
    %29. Max relative power (5-10)
    %30. Max relative power (10-15)
    %31. Max relative power (15-20)
    %32. Max relative power (20-25)
    %33. Max relative power (25-30)
    
    
    
    %RT_fall
    if (rt_fall)
        data  = feature_mat1;
    elseif(feats_all)
        data  = feature_mat1;
    else
        data  = feature_mat1(:,[8 11 12 13]);
    end
    
    norm_featmat = (data - repmat(min(data,[],1),size(data,1),1))*spdiags(1./(max(data,[],1)-min(data,[],1))',0,size(data,2),size(data,2));
    norm_featmat(isnan(norm_featmat)) = 1 ;
        
%     end_val=173;
    end_val = floor(size(norm_featmat,1)*.7);
    trainData    = norm_featmat(1:end_val,:);
    trainLabel   = labels(1:end_val);
    testData     = norm_featmat(end_val+1:end,:);
    testLabel    = labels(end_val+1:end);
    
    if(hype_opt)
        bestcv = 0;
        for log2c   = -5:1:15,
            for log2g = -5:1:15,
                cmd = ['-q -c ', num2str(2^(log2c)), ' -g ', num2str(2^(log2g))];
                cv = get_cv_ac(trainLabel, trainData, cmd, 5);
                if (cv >= bestcv),
                    bestcv = cv; bestc = 2^log2c; bestg = 2^log2g;
                end
            end
        end
        fprintf('%g %g %g (best c=%g, g=%g, accuracy=%g)\n', log2c, log2g, cv, bestc, bestg, bestcv);
    end
    
    
    param_str = ['-c ' num2str(bestc)  ' ' '-g ' num2str(bestg)];
    
    model = svmtrain(trainLabel, trainData, param_str);
    
    % Use the test data for label prediction
    [predicted_labels] = svmpredict(testLabel, testData, model);
    inside_indices = find(predicted_labels > 0);
    
    accuracy  = length(find(predicted_labels== testLabel(:,1)))*100/length(testLabel);
    
    TPs = length(find(predicted_labels==1 & testLabel==1));
    TNs = length(find(predicted_labels==0 & testLabel==0));
    FPs = length(find(testLabel==0 & predicted_labels==1));
    FNs = length(find(testLabel==1 & predicted_labels==0));
    
    % precision: out of all the examples the classifier labeled as positive, what fraction were correct?
    % recall   : out of all the positive examples there were, what fraction  did the classifier pick up?
    
    precision = TPs*100/(TPs + FPs);
    recall    = TPs*100/(TPs + FNs);
    fpr       = FPs*100/(FPs + TNs);
    % accuracy = (TPs+TNs)/(TPs+FNs+TNs+FPs)
    %fall_like_event_detection = (length(label_num))*100/length(ind)%
    f1_score  = 2*precision*recall/(precision + recall)    ;
    fprintf('acc:%g  f1 score:%g, precision:%g, recall:%g , fpr:%g)\n', accuracy, f1_score, precision, recall, fpr)
    %
     
     
    f1score_vec(j)=f1_score;
    acc_vec(j)=accuracy;
    recall_vec(j)=recall;
    precision_vec(j)=precision;
    fpr_vec(j)=fpr;
end
if (k>1)
figure
plot(recall_vec,precision_vec,'.')
hold on
% cdfplot(f1score_vec)
cdfplot(recall_vec)
cdfplot(precision_vec)
cdfplot(acc_vec)
cdfplot(fpr_vec)
% median(f1score_vec)
median(recall_vec);
median(precision_vec)
median(acc_vec)
median(fpr_vec)
median_f1score=2*median(recall_vec)*median(precision_vec)/(median(recall_vec)+median(precision_vec));
fprintf('acc:%g  f1 score:%g, precision:%g, recall:%g, fpr:%g \n', median(acc_vec), median_f1score, median(precision_vec), median(recall_vec),median(fpr_vec));

end






%% FallDeFi %%
%%
%  corridor1: c = 64,    g = .25,    96.4286  96        92.3077  100   samples:  91 misses=0
%  corridor2: c = 2048 , g = 4,   95.2381  88.8889   80,      100     samples: 146 misses=0
%% corridor overall:              95.58    90.96     83.6     100     311

%  bedroom1:   c = 8192,  g = 1,  92%, 87.5%,   77.7778%,   100%       samples:  100 misses=0
%  bedroom2:  c = 32,  g = 1,     100%%,    100%,       100%        100%       samples: 121 misses=0
%% bedroom overall:               98.38     96.32%      85.83%      100%       samples: 221

%  kitchen1:   c = 32768, g = 1,       95.2381%,   92.3077%,   92.3077%,   92.3077%   samples: 139 misses=0
%  kitchen2:  c = 16384, g = 0.0313,   100% ,      100%,       100%,       100%       samples: 120 misses=0
%% kitchen overall                     97.4444% ,  95.8717%,   95.8717%,   95.8717%   samples: 259

%% lab2       c = 4096,  g = 4,    97.4359%,   96.5517%,   93.3333%,   100%,  samples: 135 misses=0
%%
% bathroom   c = 32768,  g = 8,      97.5000,   95.2381,    90.9091,    100%       samples:  132 misses=0
% bathroom2  c = 512,    g = .0625,  97.3684%,  94.1176,    100,        88.8889    samples: 100 misses=0
%% overall bathroom                  97.4433    94.7551     94.8332     95.2107    232

%% overall                           97.1210    94.4937    90.1555     98.1171
%%
  
%% environment change
% corridor:   7 days  c = 1024,  g = 0.0625,  89.4231,   70.2703,   72.2222,   68.4211,   samples: 311, falls missed: 0
% kitchen :  33 days  c = 2.7,   g = 2.8      90,        80,        80%,       80,        samples: 223, falls missed: 0
% bathroom:  10 days  c = 700    g = .7       79.5455,   73.2673,   60.6557    92.5%      samples: 202
% bedroom :  33 days  c = 4096,  g = 2,       81.7073%   51.6129,   80%,       38.0952,   samples: 201, falls missed: 0

% 63.4258 61.4458 75 52.0408
%% RT_fall
%
% kitchen1:   c = 64,    g=.25,     89.2157    84.0580  100     72.5000   139
% kitchen2    c=2048      g=2       89.6552    88.0000  91.6667 84.6154   120
%% overall                          89.4178    85.8844  96.1392 78.1133  259
%%
% bedroom1:   c = 8192,  g = 4,     90       88.8889  88.8889  88.8889  100
% bedroom2          16     16       93.1034  91.6667  91.6667  91.6667  121
%% overall                          91.6991  90.4098  90.4098  90.4098  221
%%
% corridor1: c = 64,    g = 8192,   91.6667  93.3333  93.3333 93.3333   91
% corridor2; c = 32768, g = .125,   95       80      100      66.6667  220
%% overall                          94.0247  83.8039 97.9518  74.3722  311
%%
%% lab2:      c = 16,    g = 2       89.6226 90.0901 94.3396  86.2069   135
%%
% bathroom1   c = 4096,  g =.5      88.8,   91.2500 89.024  93.5897  132   
% bathroom2   16384      8          90.9091 90.9091 90.9091 90.9091  100   
%% overall                          89.7091 91.1031 89.8365 92.4343  232   
%%
%% overall                          91.1727    87.7251 94.0601  83.2680
%% overall                          97.1210    94.4937 90.1555  98.1171



%% noisy %%              accuracy    f1_score     precision     recall
% feature_mat = feature_mat_lab2_noise_smote;neighbours=2;bestc=16384;bestg=.125;
% acc:88.2353  f1 score:90.9535, precision:85.7143, recall:96.875
% feature_mat = feature_mat_bathroom2_noisy_smote; neighbours=3;bestc=128;bestg=16;         
% acc:87.2727  f1 score:87.666, precision:84, recall:91.6667
% feature_mat = feature_mat_bathroom1_noisy_smote;bestc=256;bestg=128;
% acc:76.5625  f1 score:78.9474, precision:78.9474, recall:78.94174
% feature_mat = feature_mat_bedroom2_noisy_smote;bestc=8;bestg=128;
% acc:76.9231  f1 score:77.9911, precision:78.5714, recall:77.4194
% feature_mat = feature_mat_bedrooms1_noisy_smote;neighbours=3;bestc=32768; bestg=64;
% acc:76.4706  f1 score:80, precision:77.7778, recall:82.3529
% feature_mat = feature_mat_corridor_2_noisy_smote;neighbours=3;bestc=16384;bestg =8;
% acc:70.1493  f1 score:74.6004, precision:68.1818, recall:82.3529
% feature_mat = feature_mat_corridor1_noisy_smote;bestc=16384;bestg=.5;
% acc:79.0698  f1 score:86.5385, precision:83.3333, recall:90
% feature_mat = feature_mat_kitchen2_noisy_smote; neighbours=3;bestc=512;bestg=1;
% acc:80.7692  f1 score:82.7586, precision:85.7143, recall:80
% feature_mat = feature_mat_kitchen1_noisy_smote;neighbours=2;bestc=32;bestg=32;
% acc:82.9787  f1 score:84.984, precision:82.6087, recall:87.5

%% no. PCs
%85
% acc:86.2745  f1 score:87.9837, precision:87.0968, recall:88.8889
%90
% acc:86  f1 score:89.3471, precision:83.3333, recall:96.2963
%95
% acc:88.8889  f1 score:90.194, precision:84.375, recall:96.875
%99
% acc:87.5  f1 score:88.4422, precision:88.8889, recall:88



%% different transmission rates
%lab2
%%  200  84.9057  87.8378 83.3333  92.8571
%%  400  90.3846  91.8728 90.9091  92.8571
%%  600  90.3846  92.1502 88.2353  96.4286
%%  800  90.9091  92.1502 88.2353  96.4286
%% 1000  90.7407  92.0635 87.8788  96.6667

%% FallDeFi timings
% amp extract 236.914  2.8204
% denoise      14.847   .1767
% pca           1.380   .0164
% stft         16.630   .198
% feat. ext.  233.473  2.7794
%% total               5.9909

%% RTFall timings
% ampphase ext  219.529   2.6134
% amp extract    17.385    .207
% phase extract   2.042    .0243
%% total                  2.8247
% feature ext    43.074   0.5128
%% total                  3.3375
