

%% NN�̃p�����[�^�ݒ�
lNum = 10000000;%�w�K��
n = length(neu_list);% �j���[������
m = 11;%���͐�
time = [0:0.05:3.05 ]';%�V�~�����[�V�������Ԃ̐ݒ�
Ts = 0.05;%�T���v�����O���g��

%�X�V�ʂ𒲐߂���W��
eta_w = 1e-2;
eta_g = 1e-2;
eta_tau = 1e-3;

%% �w�K�W���̏�����
scale_w = 1e-2;%�����l�X�P�[��(w)
scale_g = 1e-2;%�����l�X�P�[��(g)
scale_tau = 1e-2;%�����l�X�P�[��(t)
delta = 1e-2;

%% Error�W��
err = 0;
min_err = 10000;

%% �������̊m��
y = zeros(n, length(time));% �o�͂̃������m��
x = zeros(n, length(time));% ������Ԃ̃������m��

hist_err = zeros(1,lNum);% �G���[�̋L�^


