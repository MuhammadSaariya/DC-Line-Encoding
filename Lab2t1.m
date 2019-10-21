rand1 = randn(1,10000);
rand2 = randn(1,20000);
res = hist(rand1,20);
res2=hist(rand2,20);

histogram(rand1,'Normalization','pdf');
histogram(rand2,'Normalization','pdf');

mean1 = mean(rand1);
mean2 = mean(rand2);

var1 = var(rand1);
var2 = var(rand2);

hold on
stem(mean2,1,'blue');
hold on
stem(var2,'red')


a=5;b=7;
for i = 1:length(rand1)
    rand1(i) = rand1(i)*b+a;
end
mean_final1 = mean(rand1);
mean_final2 = (mean1*b)+a;

var_final1 = var(rand1);
var_final2 = var1*b*b



