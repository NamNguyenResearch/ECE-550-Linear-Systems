function [ax1,ax2] = plotter(t,x,y,figuretitle,states_name,outputs_name,figsavename)
%PLOTTER Plot+Save states, x and outputs, y of a MIMO linear system
%   t, x, y have the same number of elements
%   t : time, x: state, y: output vectors

tlay = tiledlayout(2,1,'TileSpacing','compact');

ax1 = nexttile(tlay);
plot(ax1,t,y)
xlabel("$time, t$ [ms]","Interpreter","latex")
ylabel("$ouptuts, y(t)$","Interpreter","latex")
legend(ax1,outputs_name,'Location','best',"Interpreter","latex")
grid('on')

ax2 =  nexttile(tlay);
plot(ax2,t,x)
xlabel("$time, t$ [ms]","Interpreter","latex")
ylabel("$states,x(t)$","Interpreter","latex")
legend(ax2,states_name,'Location','best',"Interpreter","latex")
grid('on')

title(tlay,figuretitle,"Interpreter","latex","FontSize",9);

exportgraphics(tlay,'savedplts/'+figsavename+'.png','Resolution',600)
exportgraphics(tlay,'savedplts/'+figsavename+'.pdf','Resolution',300)
% exportgraphics(tlay,'savedplts/'+figsavename+'.eps','Resolution',300)

% ax1 = subplot(2,1,1, 'Parent', figurehandle);
% plot(ax1,t,y);
% xlabel("$time, t$ [ms]","Interpreter","latex")
% ylabel("$ouptuts, y(t)$","Interpreter","latex")
% legend(ax1,outputs_name,'Location','best',"Interpreter","latex")
% grid('on')
% 
% ax2 = subplot(2,1,2, 'Parent', figurehandle);
% plot(ax2,t,x);
% xlabel("$time, t$ [ms]","Interpreter","latex")
% ylabel("$states,x(t)$","Interpreter","latex")
% legend(ax2,states_name,'Location','best',"Interpreter","latex")
% grid('on')

end

