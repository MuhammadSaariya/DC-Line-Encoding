% Differential Method
fs = 100; % 100 sample
encode = [];
x = [0,0,0,1,0,1,0,1,0,1,0,1,0,1,1,1,0,1,1,0,0,1,1,1,1,0,0,0];

first = 1;
z = -5.*ones(1, 50);
o = 5.*ones(1, 50);
prev = [];
for i = x
    if(first)
        encode = [z, o];
        prev = encode;
        first = 0;
    end
    if (i == 0)
        if prev[1] == -5
            encode = [encode, z, o];
        else
             encode = [encode, o, z];
        end
    else
        if prev[1] == -5
            encode = [encode, o, z];
        else
             encode = [encode, z, o];
        end
    end  
end
stem( encode)