X=[0 0 0 1 0 1 0 1 0 1 0 1 0 1 1 1 0 1 1 0 0 1 1 1 1 0 0 0];
i = 1;
for x = 1:length(X)
    if X(x) == 1
        encode(i:i+99) = 5;
    else if X(x) == 0
            encode(i:i+99) = -5;
        end
    end
    i = i+100;
end
length(encode())
stem(encode());
grid on