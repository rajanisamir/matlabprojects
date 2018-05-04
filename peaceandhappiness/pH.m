[num,txt] = xlsread('83c.xlsx');
peace = num(1:end,1);
happiness = num(1:end,2);
scatter(peace,happiness)
hold on
xlabel('Peace (lower is more peaceful)');
ylabel('Happiness (higher is happier)');
p = polyfit(peace,happiness,1);
x1 = linspace(1.1,2.1);
y1 = polyval(p,x1);
plot(x1,y1,'r--')
correlation = num2str(corr(peace,happiness));
text(1.45,6.65,strcat('\leftarrow Correlation = ',correlation),'Color','blue','FontSize',13);
