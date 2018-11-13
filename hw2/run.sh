
set -e
set -x

export CUDA_VISIBLE_DEVICES="0" 
#python train_pg_f18.py CartPole-v0 -n 100 -b 1000 -e 3 -dna --exp_name sb_no_rtg_dna
#python train_pg_f18.py CartPole-v0 -n 100 -b 1000 -e 3 --exp_name sb_no_rtg_na
#python train_pg_f18.py CartPole-v0 -n 100 -b 1000 -e 3 -rtg -dna --exp_name sb_rtg_dna
#python train_pg_f18.py CartPole-v0 -n 100 -b 1000 -e 3 -rtg --exp_name sb_rtg_na
#
#python train_pg_f18.py CartPole-v0 -n 100 -b 5000 -e 3 -dna --exp_name lb_no_rtg_dna
#python train_pg_f18.py CartPole-v0 -n 100 -b 5000 -e 3 --exp_name lb_no_rtg_na
#python train_pg_f18.py CartPole-v0 -n 100 -b 5000 -e 3 -rtg -dna --exp_name lb_rtg_dna
#python train_pg_f18.py CartPole-v0 -n 100 -b 5000 -e 3 -rtg --exp_name lb_rtg_na


# need mojoco (license) 
#python train_pg_f18.py InvertedPendulum-v2 -ep 1000 --discount 0.9 -n 100 -e 3 -l 2 -s 64 -b 4096 -lr 0.001 -rtg --exp_name hc_b4096_r1e-3

# with baselines and rewards to go
python train_pg_f18.py CartPole-v0 -n 100 -b 1000 -e 3 -rtg -dna -bl --exp_name sb_rtg_dna_bl
python train_pg_f18.py CartPole-v0 -n 100 -b 1000 -e 3 -rtg -bl --exp_name sb_rtg_na_bl
python train_pg_f18.py CartPole-v0 -n 100 -b 5000 -e 3 -rtg -dna -bl --exp_name lb_rtg_dna_bl
python train_pg_f18.py CartPole-v0 -n 100 -b 5000 -e 3 -rtg -bl --exp_name lb_rtg_na_bl
