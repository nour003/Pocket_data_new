cd "$(dirname $0)"

echo
echo " delete previous files" 
rm -r ./training_data  ./__pycache__ 
rm -r  ./output_grained_trained_models ./train_loss 

echo 
echo " Running training using run_training.py passing as arg ditr path and number of epochs"
python run_training.py ./coarse_grained_graphs 800 ./train_loss ./output_grained_trained_models

