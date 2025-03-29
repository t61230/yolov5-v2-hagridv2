
# 数据集 nc = 2 /home/dls/ai/v5v2_data/data/data.yaml 所以 models/yolov5s.yaml 的 nc 同步为 2

# --batch 32 取决于显卡，如这里是 2080s 的 8G 配置，运行 --epochs 2 两轮就可以进行测试了。

# python train.py --img 672 --batch 32 --epochs 2 --data /home/dls/ai/v5v2_data/data/data.yaml --weights weights/yolov5s.pt

# 使用空权重开始训练

python train.py --img 672 --batch-size 8 --data coco.yaml --cfg yolov5s.yaml --weights ''  --device 0 --epochs 3

# 训练卡住了就重开，常有的事情，可以使用之前训练的权重结果充当下一轮训练的起点。
