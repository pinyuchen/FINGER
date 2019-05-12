% Contributor: Pin-Yu Chen <pinyuchen.tw at gmail.com>
% All rights are reserved.

function [time eig_max VNGE]=VNGE_FINGER(A)

tic;
            d=sum(A,2); c=1/sum(d);  n=size(A,1);
            edge_weight=nonzeros(A);   
            GEapprox=1-c^2*(sum(d.^2)+sum(edge_weight.^2));
            
             D=spdiags(d,0,n,n); L=D-A; 
             eig_max=c*eigs(L,1);
             VNGE=-GEapprox*log(eig_max);
time=toc;