

%% NNのパラメータ設定
lNum = 10000000;%学習回数
n = length(neu_list);% ニューロン数
m = 11;%入力数
time = [0:0.05:3.05 ]';%シミュレーション時間の設定
Ts = 0.05;%サンプリング周波数

%更新量を調節する係数
eta_w = 1e-2;
eta_g = 1e-2;
eta_tau = 1e-3;

%% 学習係数の初期化
scale_w = 1e-2;%初期値スケール(w)
scale_g = 1e-2;%初期値スケール(g)
scale_tau = 1e-2;%初期値スケール(t)
delta = 1e-2;

%% Error係数
err = 0;
min_err = 10000;

%% メモリの確保
y = zeros(n, length(time));% 出力のメモリ確保
x = zeros(n, length(time));% 内部状態のメモリ確保

hist_err = zeros(1,lNum);% エラーの記録


