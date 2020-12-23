%% ニューロン名の設定
% 運動に関係するニューロンのリスト
% 59番から体壁筋
neu_list = {'DA01' 'DA02' 'DA03' 'DA04' 'DA05' 'DA06' 'DA07' 'DA08' 'DA09' ...
            'DB01' 'DB02' 'DB03' 'DB04' 'DB05' 'DB06' 'DB07' ...
            'AS01' 'AS02' 'AS03' 'AS04' 'AS05' 'AS06' 'AS07' 'AS08' 'AS09' 'AS10' 'AS11' ...
            'DD01' 'DD02' 'DD03' 'DD04' 'DD05' 'DD06' ...
            'VA01' 'VA02' 'VA03' 'VA04' 'VA05' 'VA06' 'VA07' 'VA08' 'VA09' 'VA10' 'VA11' 'VA12' ...
            'VB01' 'VB02' 'VB03' 'VB04' 'VB05' 'VB06' 'VB07' 'VB08' 'VB09' 'VB10' 'VB11' ...
            'VD01' 'VD02' 'VD03' 'VD04' 'VD05' 'VD06' 'VD07' 'VD08' 'VD09' 'VD010' 'VD11' 'VD12' 'VD13' ...
            'dBWML1' 'dBWML2' 'dBWML3' 'dBWML4' 'dBWML5' 'dBWML6' 'dBWML7' 'dBWML8' 'dBWML9' 'dBWML10' 'dBWML11' 'dBWML12' 'dBWML13' 'dBWML14' 'dBWML15' 'dBWML16' 'dBWML17' 'dBWML18' 'dBWML19' 'dBWML20' 'dBWML21' 'dBWML22' 'dBWML23' 'dBWML24' ...
            'dBWMR1' 'dBWMR2' 'dBWMR3' 'dBWMR4' 'dBWMR5' 'dBWMR6' 'dBWMR7' 'dBWMR8' 'dBWMR9' 'dBWMR10' 'dBWMR11' 'dBWMR12' 'dBWMR13' 'dBWMR14' 'dBWMR15' 'dBWMR16' 'dBWMR17' 'dBWMR18' 'dBWMR19' 'dBWMR20' 'dBWMR21'  'dBWMR22' 'dBWMR23' 'dBWMR24' ...
            'vBWML1' 'vBWML2' 'vBWML3' 'vBWML4' 'vBWML5' 'vBWML6' 'vBWML7' 'vBWML8' 'vBWML9' 'vBWML10' 'vBWML11' 'vBWML12' 'vBWML13' 'vBWML14' 'vBWML15' 'vBWML16' 'vBWML17' 'vBWML18' 'vBWML19' 'vBWML20' 'vBWML21' 'vBWML22' 'vBWML23' ...
            'vBWMR1' 'vBWMR2' 'vBWMR3' 'vBWMR4' 'vBWMR5' 'vBWMR6' 'vBWMR7' 'vBWMR8' 'vBWMR9' 'vBWMR10' 'vBWMR11' 'vBWMR12' 'vBWMR13' 'vBWMR14' 'vBWMR15' 'vBWMR16' 'vBWMR17' 'vBWMR18' 'vBWMR19' 'vBWMR20' 'vBWMR21' 'vBWMR22' 'vBWMR23' 'vBWMR24'};

% 入力と接続のあるニューロン
AVAL_list = {'DA01' 'DA02' 'DA03' 'DA04' 'DA05' 'DA07' 'DA08' 'DA09' 'DB07' 'VA01' 'VA02' 'VA03' 'VA04' 'VA05' 'VA06' 'VA07' 'VA08' 'VA09' 'VA10' 'VA11' 'VA12' 'AS02' 'AS04' 'AS05' 'AS07' 'AS08' 'AS09' 'AS10' 'AS11'};
AVAR_list = {'DA01' 'DA02' 'DA03' 'DA04' 'DA05' 'DA06' 'DA07' 'DA08' 'DA09' 'DB02' 'DB03' 'VA02' 'VA03' 'VA04' 'VA05' 'VA06' 'VA07' 'VA08' 'VA09' 'VA10' 'VA11' 'AS01' 'AS02' 'AS04' 'AS05' 'AS06' 'AS07' 'AS08' 'AS9' 'AS11'};
AVBL_list = {'DA05' 'DA07' 'VA02' 'VA10' 'VB02' 'AS04' 'AS05' 'AS10'};
AVBR_list = {'DA03' 'DA04' 'DA07' 'DB04' 'VA03' 'VA04' 'VD03' 'vBWML16' 'AS01' 'AS03' 'AS04' 'AS10'};
AVDL_list = {'DA01' 'DA02' 'DA03' 'DA04' 'DA05' 'DA08' 'VA03' 'VA05' 'VA10' 'VA12' 'AS04' 'AS10' 'AS11'};
AVDR_list = {'DA01' 'DA02' 'DA03' 'DA04' 'DA05' 'DA08' 'DB01' 'DB04' 'VA02' 'VA03' 'VA05' 'VA11' 'AS10' 'AS11'};
AVEL_list = {'DA01' 'DA02' 'DA03' 'DB03' 'VA01' 'VA03' 'VD02' 'VD03' 'AS01'};
AVER_list = {'DA01' 'DA02' 'DA03' 'DB03' 'VA01' 'VA02' 'VA03' 'VA04' 'AS01' 'AS02' 'AS03'};
PVCL_list = {'DA05' 'DA08' 'DB02' 'DB03' 'DB04' 'DB07' 'VA11' 'VB04' 'VB06' 'VB11' 'AS01' 'AS02'};
PVCR_list = {'DA02' 'DA04' 'DA05' 'DA07' 'DB02' 'DB03' 'DB04' 'VB03' 'VB04' 'VB06' 'VB11'};

% 教師信号を入力するニューロン

%dorsal側
sin_listd1 = {'dBWML1' 'dBWMR1'};%59
sin_listd2 = {'dBWML2' 'dBWMR2'};%60
sin_listd3 = {'dBWML3' 'dBWMR3'};%61
sin_listd4 = {'dBWML4' 'dBWMR4'};%
sin_listd5 = {'dBWML5' 'dBWMR5'};%59
sin_listd6 = {'dBWML6' 'dBWMR6'};%60
sin_listd7 = {'dBWML7' 'dBWMR7'};
sin_listd8 = {'dBWML8' 'dBWMR8'};%60
sin_listd9 = {'dBWML9' 'dBWMR9'};%67
sin_listd10 = {'dBWML10' 'dBWMR10'};%56
sin_listd11 = {'dBWML11' 'dBWMR11'};%57
sin_listd12 = {'dBWML12' 'dBWMR12'};%58
sin_listd13 = {'dBWML13' 'dBWMR13'};%59
sin_listd14 = {'dBWML14' 'dBWMR14'};%60
sin_listd15 = {'dBWML15' 'dBWMR15'};
sin_listd16 = {'dBWML16' 'dBWMR16'};%60
sin_listd17 = {'dBWML17' 'dBWMR17'};%60
sin_listd18 = {'dBWML18' 'dBWMR18'};%60
sin_listd19 = {'dBWML19' 'dBWMR19'};%60
sin_listd20 = {'dBWML20' 'dBWMR20'};%60
sin_listd21 = {'dBWML21' 'dBWMR21'};%60
sin_listd22 = {'dBWML22' 'dBWMR22'};%60
sin_listd23 = {'dBWML23' 'dBWMR23'};%60
sin_listd24 = {'dBWML24' 'dBWMR24'};%60

%ventral側
sin_listv1 = {'vBWML1' 'vBWMR1'};%59
sin_listv2 = {'vBWML2' 'vBWMR2'};%60
sin_listv3 = {'vBWML3' 'vBWMR3'};%61
sin_listv4 = {'vBWML4' 'vBWMR4'};%
sin_listv5 = {'vBWML5' 'vBWMR5'};%59
sin_listv6 = {'vBWML6' 'vBWMR6'};%60
sin_listv7 = {'vBWML7' 'vBWMR7'};
sin_listv8 = {'vBWML8' 'vBWMR8'};%60
sin_listv9 = {'vBWML9' 'vBWMR9'};%67
sin_listv10 = {'vBWML10' 'vBWMR10'};%56
sin_listv11 = {'vBWML11' 'vBWMR11'};%57
sin_listv12 = {'vBWML12' 'vBWMR12'};%58
sin_listv13 = {'vBWML13' 'vBWMR13'};%59
sin_listv14 = {'vBWML14' 'vBWMR14'};%60
sin_listv15 = {'vBWML15' 'vBWMR15'};
sin_listv16 = {'vBWML16' 'vBWMR16'};%60
sin_listv17 = {'vBWML17' 'vBWMR17'};%60
sin_listv18 = {'vBWML18' 'vBWMR18'};%60
sin_listv19 = {'vBWML19' 'vBWMR19'};%60
sin_listv20 = {'vBWML20' 'vBWMR20'};%60
sin_listv21 = {'vBWML21' 'vBWMR21'};%60
sin_listv22 = {'vBWML22' 'vBWMR22'};%60
sin_listv23 = {'vBWML23' 'vBWMR23'};%60
sin_listv24 = {'vBWMR24'};%60