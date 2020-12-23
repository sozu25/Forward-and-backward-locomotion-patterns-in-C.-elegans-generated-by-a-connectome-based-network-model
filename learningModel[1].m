%% フィードフォワード
for loop_num = 1:lNum

    y = ones(n, length(time))*0.5;% 出力のメモリ確保
    y(:,1) = d(:,1); %　立ち上がりのみ教師信号と合わせる
    x = zeros(n, length(time));% 内部状態のメモリ確保
    err = 0;
    
    for loop = 1:length(time)

        xi = repmat(x(:,loop),1,n);
        xj = repmat(x(:,loop)',n,1);
    
        x(:,loop + 1) = (Ts ./ (1 + Ts * tau)) .* ( w * [y(:,loop);in(:,loop)] + sum( g .* ( xj - xi ),2)) + ((1 ./ (1 + Ts * tau)) .* x(:,loop));
        
        y(:,loop + 1) = sigmoid(x(:,loop + 1));
        if loop > 10
            err = err + sum(mu.*(d(:,loop) - y(:,loop)).^2)/2;
        end
    end
    
if(rem(loop_num,100) == 0)
    disp(['学習回数:',int2str(loop_num),' err:',num2str(err)])
%     save('res20170215data2.mat');
end

hist_err(:,loop_num) = err;

%% 誤差が最小となった時の重みを保存
    if(err < min_err)
        w_ = w;
        tau_ = tau;
        g_ = g;
        min_err = err;

%         if(err < 35)
%             break
%         end
    end
    
%     if(err < 284)
%         break;
%     end
if(rem(loop_num,100000) == 0)
    file_name = [datestr(now,'yyyymmdd'),'res_min.mat'];
    save(file_name,'w_','g_','tau_','min_err', 'hist_err', 'loop_num');
end
%% BPT

rE_rx = zeros(n, length(time));
rE_rx(:, length(time)) = mu .* (y(:,length(time))-d(:,length(time))) .* d_sig(x(:,length(time)));
 w_tmp = w(1:n,1:n);
    for loop3 = 1:length(time)-1
    loop2 = length(time) - loop3;
    
    rE_rx(:,loop2) = mu .* (y(:,loop2) - d(:,loop2)) .* d_sig(x(:,loop2)) + ...
         ((1 ./ (1 + Ts * tau )) .* rE_rx(:,loop2 + 1) ) + ...
         (w_tmp'*rE_rx(:, loop2+1)).* d_sig(x(:,loop2)).*(Ts./(1+Ts*tau)) + ...
         (( Ts ./ (1 + Ts * tau)) .* ( g' * rE_rx(:,loop2 + 1))) - ...
         (( Ts ./ (1 + Ts * tau)) .* (sum(g, 2) .* rE_rx(:,loop2 + 1)));
%          

    end

    rE_rw = zeros(n,n+m);
    rE_rtau = zeros(n,1);
    rE_rg = zeros(n,n);

    for t =2:length(time)
    xi = repmat(x(:,t - 1),1,n);
    xj = repmat(x(:,t - 1)',n,1);
    
    rE_rx_t = repmat(rE_rx(:,t),1,n);
    rE_rx_t_w = repmat(rE_rx(:,t),1,n + m);
    
    rE_rw = rE_rw + ((Ts ./ (1 + Ts * tau)) * [y(:,t - 1);in(:,t - 1)]') .* rE_rx_t_w;

    rE_rtau = rE_rtau + ((-Ts ./ (1 + Ts * tau).^2) .* x(:,t - 1) ...
         - ( Ts^2 ./ (1 + Ts * tau).^2) .* ( w * [y(:,t - 1);in(:,t - 1)]) ...
         - ( Ts^2 ./ (1 + Ts * tau).^2) .* sum( g .* ( xj - xi ),2)) .* rE_rx(:,t);

    rE_rg = rE_rg + (repmat(Ts ./ (1 + Ts * tau),1,n) .* ( xj - xi )) .* rE_rx_t;

    end
    
%% 重みの更新
w = w - eta_w * rE_rw .* [W_filt, W_filt_in];

%% 時定数の更新

tau = tau - eta_tau * rE_rtau;
tau(tau < 0) = 0;

%% ギャップジャンクションの更新
rE_rg = (rE_rg + rE_rg')/2;
g = g - eta_g * rE_rg .*W_filt_g;
g(g<0) = 0;

learningRestriction

end