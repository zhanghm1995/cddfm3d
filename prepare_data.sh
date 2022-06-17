mv stylegan2/Images sample_dataset/
mv stylegan2/latents.pkl sample_dataset/
mv stylegan2/constants.pkl sample_dataset/
mv Deep3DFaceReconstruction-pytorch/params.pkl sample_dataset/
cd sample_dataset/
python extract_landmarks.py
python split_train_test.py