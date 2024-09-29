picturewidth = 20; % set this parameter and keep it forever
folder = "figs/"; 

hw_ratio = 0.65; % feel free to play with this ratio
set(findall(hfig,'-property','FontSize'),'FontSize',17) % adjust fontsize to your document
set(findall(hfig,'-property','Box'),'Box','off') % optional
set(findall(hfig,'-property','Interpreter'),'Interpreter','latex')
set(findall(hfig,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
set(hfig,'Units','centimeters','Position',[3 3 picturewidth hw_ratio*picturewidth])
pos = get(hfig,'Position');
fname = get(hfig,'Name');

set(hfig,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])

path = folder + fname; 
print(hfig,path,'-dpdf','-painters','-fillpage')
% print(hfig,fname,'-dpng','-painters');
