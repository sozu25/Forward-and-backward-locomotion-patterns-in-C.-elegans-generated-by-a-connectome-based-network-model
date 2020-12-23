% DA,DB‹»•±
for loop = 1:16
    for loop2 = 1:153
        if w(loop,loop2) <= 0
            w(loop,loop2) = w(loop,loop2) * -1;
        end
    end
end

%DD—}§
for loop = 17:22
    for loop2 = 1:153
        if w(loop,loop2) >= 0
            w(loop,loop2) = w(loop,loop2) * -1;
        end
    end
end

%VA,VB‹»•±
for loop = 23:45
    for loop2 = 1:153
        if w(loop,loop2) <= 0
            w(loop,loop2) = w(loop,loop2) * -1;
        end
    end
end

%VD—}§
for loop = 46:58
    for loop2 = 1:153
        if w(loop,loop2) >= 0
            w(loop,loop2) = w(loop,loop2) * -1;
        end
    end
end
