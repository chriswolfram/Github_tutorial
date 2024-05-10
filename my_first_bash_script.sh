#!/bin/bash
#SBATCH --job-name=array_compute_mean
#SBATCH --output=logs/array_mean_compute_%A_%a.out
#SBATCH --error=logs/array_mean_compute_%A_%a.err
#SBATCH --array=1-20
#SBATCH --time=1:00:00
#SBATCH --partition=caslake
#SBATCH --mem=20G
#SBATCH --account=pi-cdonnat

# Print the task id.
echo "My SLURM_ARRAY_TASK_ID: " $SLURM_ARRAY_TASK_ID
echo "My SLURM_ARRAY_JOB_ID: " $SLURM_ARRAY_JOB_ID
job_id=$SLURM_ARRAY_JOB_ID
result_file="${SLURM_ARRAY_JOB_ID}_${SLURM_ARRAY_TASK_ID}"
echo "result file is ${result_file}"
cd $SCRATCH/$USER/Github_tutorial

module load python/anaconda-2021.05
python3 compute_mean.py --namefile $result_file --seed $SLURM_ARRAY_TASK_ID