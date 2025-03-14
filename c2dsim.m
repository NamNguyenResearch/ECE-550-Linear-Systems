function [yt,xt,t] = c2dsim(sys,ut,x0,t)
%C2DSIM Simulate a discretized CT linear system 
%   t   : time steps vector from to to tf
%   x0  : initial stateof size n
%   ut  : input at time t.
%   sys : linear system data structure holding A, B, C, D 

n_x0 = numel(x0);
[q,n] = size(sys.C);
assert(n == n_x0)

K = numel(t);
xt = zeros(n,K);
yt = zeros(q,K);
xt(:,1) = x0;

%%% DT sim. t0 to tf in t
for k=1:K-1
    xt(:,k+1) = sys.A*xt(:,k) + sys.B*ut(:,k);
    yt(:,k) = sys.C*xt(:,k);
end
yt(:,K) = sys.C*xt(:,K);


yt = yt';
xt = xt';

end

