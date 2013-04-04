G = zeros(18,18);

G(2,1) = 1;
G(11,1) = 1;

G(3,2) = 1;

G(4,3) = 1;
G(7,3) = 1;
G(9,3) = 1;

G(8,4) = 1;
G(10,4) = 1;

G(4,5) = 1;

G(5,6) = 1;

G(1,7) = 1;
G(12,7) = 1;

G(12,8) = 1;
G(13,8) = 1;

G(12,9) = 1;
G(13,9) = 1;

G(6,10) = 1;
G(13,10) = 1;

G(7,11) = 1;
G(8,11) = 1;
G(12,11) = 1;

G(15,12) = 1;

G(18,13) = 1;

G(9,14) = 1;
G(10,14) = 1;
G(13,14) = 1;

G(16,15) = 1;

G(15,16) = 1;
G(17,16) = 1;

G(12,17) = 1;
G(13,17) = 1;
G(16,17) = 1;
G(18,17) = 1;

G(14,18) = 1;
G(17,18) = 1;

fig1 = figure(1);
spy(G);
saveas(fig1,'spy.png','png');

fig2 = figure(2);
pr1 = MyPageRank(G, 0.85);
bar(1:18,pr1);
title('Page Rank alpha=0.85');
xlabel('Page Number');
ylabel('Probability');
saveas(fig2,'pageranks_b.png','png');

fig3 = figure(3);
pr2 = MyPageRank(G, 0.5);
bar(1:18,pr2);
title('Page Rank alpha=0.5');
xlabel('Page Number');
ylabel('Probability');
saveas(fig3,'pageranks_c.png','png');

% sorted ranking output

[S, I] = sort(pr1,'descend');
[S, I] = sortrows( [ I S] );

[S2, I2] = sort(pr2,'descend');
[S2, I2] = sortrows( [ I2 S2] );

change = I-I2;

ret = [ [1:18]' S(:,2) I S2(:,2) I2 change]
