#!/bin/sh

cd ../  # Go back to experiment direction
# Small graphs with less than 100 variables
python run_exported_graphs.py --cluster \
                              --graph_files ../causal_graphs/real_data/small_graphs/*.bif \
                              --lambda_sparse 0.002 \
                              --num_epochs 100 \
                              --seed 42
# Large graphs with more than 100 variables
python run_exported_graphs.py --cluster \
                              --graph_files ../causal_graphs/real_data/large_graphs/*.bif \
                              --num_epochs 50 \
                              --lambda_sparse 0.02 \
                              --max_graph_stacking 10 \
                              --model_iters 4000 \
                              --use_theta_only_stage \
                              --theta_only_iters 2000 \
                              --seed 42 