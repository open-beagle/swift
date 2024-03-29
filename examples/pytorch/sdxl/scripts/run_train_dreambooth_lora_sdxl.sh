PYTHONPATH=../../ \
accelerate launch train_dreambooth_lora_sdxl.py \
  --pretrained_model_name_or_path="AI-ModelScope/stable-diffusion-xl-base-1.0" \
  --instance_data_dir="./dog-example" \
  --pretrained_vae_model_name_or_path="AI-ModelScope/sdxl-vae-fp16-fix" \
  --output_dir="sdxl-dog-dreambooth-lora" \
  --mixed_precision="fp16" \
  --instance_prompt="a photo of sks dog" \
  --resolution=1024 \
  --train_batch_size=1 \
  --gradient_accumulation_steps=4 \
  --learning_rate=1e-5 \
  --report_to="tensorboard" \
  --lr_scheduler="constant" \
  --lr_warmup_steps=0 \
  --max_train_steps=500 \
  --validation_prompt="A photo of sks dog in a bucket" \
  --validation_epochs=25 \
  --seed="0" \
