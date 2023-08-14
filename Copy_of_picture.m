

y3=[0.4416    0.2941    0.1210    0.0639    0.0386    0.0495    0.0356    0.0337];

E = [0.2,0.5,1,2,3,4,5,6];

plot(E,y3*sqrt(2),'->','linewidth',3,'color','g', 'markersize',12, 'markerfacecolor', 'g');
hold on
grid on
set(gca,'FontSize',20);
title('$Syn$, $T=16$','fontsize',28,'Interpreter','latex');
xlabel('privacy budget $\epsilon$','fontsize',28,'Interpreter','latex');
ylabel('$l_\infty$','fontsize',28,'Interpreter','latex');
h = legend('DDRM');
% set(h,'Interpreter','latex','FontSize',20)
