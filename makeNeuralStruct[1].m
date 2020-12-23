%% シグモイド関数の定義
sigmoid = @(x) 1./(1+exp(-x));% シグモイド
d_sig = @(x) sigmoid(x).*(1-sigmoid(x));% シグモイドの微分


%% ニューラルネットの構造決定

% 相互接続
load('W_filt_7feedback_AS_bf.mat');
load('W_filt3_g_AS.mat');
for loop1 = 1:length(W_filt)
    W_filt(loop1,loop1) = 0;
end

% 入力の接続
W_filt_in = [ones(n,1), zeros(n, m-1)];

for loop1 = 1:length(neu_list)
    
    for loop2 = 1:length(AVAL_list)
        if strcmp(AVAL_list{loop2}, neu_list{loop1})
            W_filt_in(loop1, 2) = 1;
        end
    end
    
    for loop2 = 1:length(AVAR_list)
        if strcmp(AVAR_list{loop2}, neu_list{loop1})
            W_filt_in(loop1, 3) = 1;
        end
    end
    
    for loop2 = 1:length(AVBL_list)
        if strcmp(AVBL_list{loop2}, neu_list{loop1})
            W_filt_in(loop1, 4) = 1;
        end
    end
    
    for loop2 = 1:length(AVBR_list)
        if strcmp(AVBR_list{loop2}, neu_list{loop1})
            W_filt_in(loop1, 5) = 1;
        end
    end
    
    for loop2 = 1:length(AVDL_list)
        if strcmp(AVDL_list{loop2}, neu_list{loop1})
            W_filt_in(loop1, 6) = 1;
        end
    end
    
    for loop2 = 1:length(AVDR_list)
        if strcmp(AVDR_list{loop2}, neu_list{loop1})
            W_filt_in(loop1, 7) = 1;
        end
    end
    
    for loop2 = 1:length(AVEL_list)
        if strcmp(AVEL_list{loop2}, neu_list{loop1})
            W_filt_in(loop1, 8) = 1;
        end
    end
    
    for loop2 = 1:length(AVER_list)
        if strcmp(AVER_list{loop2}, neu_list{loop1})
            W_filt_in(loop1, 9) = 1;
        end
    end
    
    for loop2 = 1:length(PVCL_list)
        if strcmp(PVCL_list{loop2}, neu_list{loop1})
            W_filt_in(loop1, 10) = 1;
        end
    end
    
    for loop2 = 1:length(PVCR_list)
        if strcmp(PVCR_list{loop2}, neu_list{loop1})
            W_filt_in(loop1, 11) = 1;
        end
    end

end

%%

w = (2*rand(n,n+m)-1) * scale_w .* [W_filt, W_filt_in];
    
g = rand(n,n) * scale_g .* W_filt_g;
g = (g + g')/2;
tau = rand(n,1) * scale_tau;
