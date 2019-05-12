% Demo code for the paper "Fast Incremental von Neumann Graph Entropy Computation: Theory, Algorithm, and Applications". 
% Published at ICML 2019.
% Paper link: https://arxiv.org/abs/1805.11769
% Contributor: Pin-Yu Chen <pinyuchen.tw at gmail.com>
% All rights are reserved.

clear all; close all; clc;
% Demo: compute von Newmann graph entropy using FINGER (FAST)

%% Generate a Erdos-Renyi graph A with n nodes and n*p average degree
n=10^4;
p=10^-2;

tmp=sprand(n,n,p);  tmp=spones(tmp); tmp=triu(tmp,1);
A=tmp+tmp';
    
%% Computing exact VNGE
[timeExact VNGE_exact]=GraEntExact(A);

%% Computing approximate VNGE using FINGER (FAST)
[timeFINGER eig_max VNGE_FINGER]=VNGE_FINGER(A);

%% Scaled appromimation error (SAE) and computation time reduction ratio (CTRR)
SAE=(VNGE_exact- VNGE_FINGER)/log(n);
CTRR=100*(timeExact - timeFINGER)/timeExact;

%% Results
disp(['Computing exact VNGE takes ',num2str(timeExact),' seconds'])
disp(['Computing VNGE using FINGER (FAST) takes ',num2str(timeFINGER),' seconds'])
disp(['The computation time reduction ratio is ', num2str(CTRR),'%'])
disp(['The scaled appromimation error is ', num2str(SAE)])


    

