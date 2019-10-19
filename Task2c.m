X=[0 0 0 1 0 1 0 1 0 1 0 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 0 0];
if X(1) == 0
    encode(1:100) = 5;
else if X(1)  == 1
        encode(1:100) = -5;
    end
end
i=100;
for x = 2:length(X)
    if X(x) == 0
        if encode(i) == 5
            encode(i+1:i+50) = 5;
            encode(i+51:i+100) = 0;
        else if encode(i) == -5
                encode(i+1:i+50) = -5;
                encode(i+51:i+100) = 0;
            end
        end
    else if X(x) == 1
            if encode(i) == 5
                encode(i+1:i+50) = -5;
                encode(i+51:i+100) = 0;
            else if encode(i) == -5
                    encode(i+1:i+50) = 5;
                    encode(i+51:i+100) = 0;
                end
            end
        end
    end
    i = i+100;
end
length(encode())
stem(encode())
grid on