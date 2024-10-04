
runtype="runs"
scenes="bicycle"

echo "DATASET"
echo $DATASET_DIR/bicycle
for scene in $scenes; do  

    outdir="./output/${scene}"
    mkdir -p $outdir

    python train.py \
     -s $DATASET_DIR/$scene --eval -r 4 \
     -m $outdir --port 8000 --data_device cuda \
     
done