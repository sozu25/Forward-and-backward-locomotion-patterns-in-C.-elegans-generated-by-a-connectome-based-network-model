
%%Å@ã≥étÉfÅ[É^ÇÉçÅ[Éh
% in_: ì¸óÕ
% sind: dorsalë§ã≥ét
% sinv: ventralë§ã≥ét
load('data\data1625_sin_short_5.mat');

%% ì¸óÕêMçÜÇÃçÏê¨

in = [ones(length(time),1),in_(:,1),in_(:,1),in_(:,2),in_(:,2),in_(:,1),in_(:,1),in_(:,1),in_(:,1),in_(:,2),in_(:,2)]';

%% ã≥étêMçÜÇÃçÏê¨

% ê≥ãKâª
for loop = 1:24
    if max(sind(:,loop)) ~= 0
        sind(:,loop) = (sind(:,loop) - min(sind(:,loop))); sind(:,loop) = sind(:,loop)/max(sind(:,loop));
        sind(:,loop) = (sind(:,loop)/2)+0.25;
    end
end

for loop = 1:24
    if max(sinv(:,loop)) ~= 0
        sinv(:,loop) = (sinv(:,loop) - min(sinv(:,loop))); sinv(:,loop) = sinv(:,loop)/max(sinv(:,loop));
        sinv(:,loop) = (sinv(:,loop)/2)+0.25;
    end
end

% ã≥étêMçÜÇíËã`
d = zeros(length(time), n);
mu = zeros(n,1);
for loop = 1:n
    
    for loop1 = 1:n
        for loop2 = 1:length(sin_listd1)
            % 
            if( strcmp(sin_listd1{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,1);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd2)
            % 
            if( strcmp(sin_listd2{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,2);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd3)
            % 
            if( strcmp(sin_listd3{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,3);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd4)
            % 
            if( strcmp(sin_listd4{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,4);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd5)
            % 
            if( strcmp(sin_listd5{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,5);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd6)
            % 
            if( strcmp(sin_listd6{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,6);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd7)
            % 
            if( strcmp(sin_listd7{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,7);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd8)
            % 
            if( strcmp(sin_listd8{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,8);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd9)
            % 
            if( strcmp(sin_listd9{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,9);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd10)
            % 
            if( strcmp(sin_listd10{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,10);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd11)
            % 
            if( strcmp(sin_listd11{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,11);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd12)
            % 
            if( strcmp(sin_listd12{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,12);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd13)
            % 
            if( strcmp(sin_listd13{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,13);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd14)
            % 
            if( strcmp(sin_listd14{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,14);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd15)
            % 
            if( strcmp(sin_listd15{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,15);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd16)
            % 
            if( strcmp(sin_listd16{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,16);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd17)
            % 
            if( strcmp(sin_listd17{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,17);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd18)
            % 
            if( strcmp(sin_listd18{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,18);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd19)
            % 
            if( strcmp(sin_listd19{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,19);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd20)
            % 
            if( strcmp(sin_listd20{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,20);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd21)
            % 
            if( strcmp(sin_listd21{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,21);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd22)
            % 
            if( strcmp(sin_listd22{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,22);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd23)
            % 
            if( strcmp(sin_listd23{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,23);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listd24)
            % 
            if( strcmp(sin_listd24{loop2}, neu_list{loop1}) )
                d(:, loop1) = sind(:,24);
                mu(loop1,1) = 1;
            end
        end
    end
end

for loop = 1:n
    
    for loop1 = 1:n
        for loop2 = 1:length(sin_listv1)
            % 
            if( strcmp(sin_listv1{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,1);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv2)
            % 
            if( strcmp(sin_listv2{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,2);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv3)
            % 
            if( strcmp(sin_listv3{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,3);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv4)
            % 
            if( strcmp(sin_listv4{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,4);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv5)
            % 
            if( strcmp(sin_listv5{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,5);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv6)
            % 
            if( strcmp(sin_listv6{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,6);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv7)
            % 
            if( strcmp(sin_listv7{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,7);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv8)
            % 
            if( strcmp(sin_listv8{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,8);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv9)
            % 
            if( strcmp(sin_listv9{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,9);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv10)
            % 
            if( strcmp(sin_listv10{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,10);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv11)
            % 
            if( strcmp(sin_listv11{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,11);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv12)
            % 
            if( strcmp(sin_listv12{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,12);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv13)
            % 
            if( strcmp(sin_listv13{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,13);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv14)
            % 
            if( strcmp(sin_listv14{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,14);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv15)
            % 
            if( strcmp(sin_listv15{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,15);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv16)
            % 
            if( strcmp(sin_listv16{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,16);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv17)
            % 
            if( strcmp(sin_listv17{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,17);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv18)
            % 
            if( strcmp(sin_listv18{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,18);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv19)
            % 
            if( strcmp(sin_listv19{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,19);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv20)
            % 
            if( strcmp(sin_listv20{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,20);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv21)
            % 
            if( strcmp(sin_listv21{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,21);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv22)
            % 
            if( strcmp(sin_listv22{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,22);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv23)
            % 
            if( strcmp(sin_listv23{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,23);
                mu(loop1,1) = 1;
            end
        end
        
        for loop2 = 1:length(sin_listv24)
            % 
            if( strcmp(sin_listv24{loop2}, neu_list{loop1}) )
                d(:, loop1) = sinv(:,24);
                mu(loop1,1) = 1;
            end
        end
    end
end
%  
% load('res1_.mat')

d = d';