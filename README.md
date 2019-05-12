# FINGER: Fast Incremental von Neumann Graph Entropy Computation
MATLAB demo codes for fast von Neumann graph entropy computation method published at ICML 2019

Paper link: https://arxiv.org/abs/1805.11769

Environment: tested on MATLAB R2016b

# Demo: compute von Newmann graph entropy (VNGE) using FINGER (FAST)

1. Run main_FINGER_demo.m
2. The demo code first generates a Erdos-Renyi graph with n nodes and n*p average degree. Its connectivity pattern is characterized by the adjacency matrix A
3. GraEntExact(A) computes the exact VNGE of A and reports the computation time
4. VNGE_FINGER(A) uses FINGER (FAST) to compute the approximate VNGE of A and report the computation time
5. The demo code also shows the scaled appromimation error (SAE) and computation time reduction ratio (CTRR)

# Sample results using n=10^4 and p=10^-2

Computing exact VNGE takes 37.6566 seconds

Computing VNGE using FINGER (FAST) takes 0.35195 seconds

The computation time reduction ratio is 99.0654%

The scaled appromimation error is 0.039722


