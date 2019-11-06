#!/bin/bash
#SBATCH --job-name=portal_weekly_forecast
#SBATCH --mail-user=jsimonis@ufl.edu
#SBATCH --mail-type=FAIL,END
#SBATCH --ntasks=1
#SBATCH --mem=2gb
#SBATCH --time=3:00:00
#SBATCH --partition=hpg2-compute
#SBATCH --output=test_log.out
date;hostname;pwd

source /etc/profile.d/modules.sh

module load git R singularity

rm -f portal_predictions_latest.sif
rm -rf portalPredictions
rm -rf forecasts
singularity pull docker://weecology/portal_predictions
git clone https://github.com/weecology/portalPredictions.git
cd portalPredictions
singularity run ../portal_predictions_latest.sif Rscript stack_test.R

