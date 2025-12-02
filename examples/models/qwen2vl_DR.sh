# Run and exactly reproduce qwen2vl results!
# mme as an example
export HF_TOKEN="Here you should put your huggingface token"

pip3 install qwen_vl_utils
export CUDA_VISIBLE_DEVICES=3
accelerate launch --num_processes=1 --main_process_port=12345 -m lmms_eval \
    --model qwen2_vl_DR \
    --model_args=pretrained=Qwen/Qwen2-VL-7B-Instruct,max_pixels=2359296 \
    --tasks mmstar \
    --batch_size 1 --log_samples --log_samples_suffix reproduce --output_path ./logs/