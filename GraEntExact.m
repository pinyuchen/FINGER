% Contributor: Pin-Yu Chen <pinyuchen.tw at gmail.com>
% All rights are reserved.

function [time GEexact]=GraEntExact(A)
tic
 d=sum(A,2); c=1/sum(d); n=size(A,1);
 D=spdiags(d,0,n,n);
 L=D-A; Lnor=c*L;
 edge_weight=nonzeros(A);   
 eigExact=eig(full(Lnor));  
 eigExact(find(eigExact<0))=0; ind_pos=find(eigExact>0);
 GEexact=-sum(eigExact(ind_pos).*log(eigExact(ind_pos)));             
time=toc; 
 %figure; plot( eigExact)