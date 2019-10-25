X=[0 0 0 1 0 1 0 1 0 1 0 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 0 0];
i = 100;
encode(1:50) = -5;
encode(51:100) = 5;
for x = 2:length(X)
    if X(x) == 0
            encode(i+1:i+50) = encode(i);
            encode(i+51:i+100) = -encode(i);
    else
        if X(x) == 1
            encode(i+1:i+50) = -encode(i);
            encode(i+51:i+100) = encode(i);
        end
    end
    i = i+100;
end
length(encode())
stem(encode())
grid on
