
generate_data() {
    echo "Generating data..."
    cd stylegan2
    python generate_data.py --pics 4000 --ckpt checkpoint/stylegan2-ffhq-config-f.pt
    cd ..
    echo "Data generated."
}

estimate_3DMM() {
    echo "Estimating 3DMM..."
    cd Deep3DFaceReconstruction-pytorch
    python extract_gt.py ../stylegan2/Images
    cd ..
    echo "3DMM estimated."
}

train_lantent_manipulation_net() {
    echo "Training latent manipulation net..."
    python train.py --name shape --model RIGModelS \
                    --train_render --train_landmark \
                    --train_rec --train_edge \
                    --apnet_name pretrained_2W --load_apnet_epoch 80
}

train_lantent_manipulation_net