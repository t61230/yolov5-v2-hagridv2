
## 更换成正确的训练结果进行测试
python3 detect.py --source ./inference/images/ --weights runs/exp5/weights/best.pt --conf 0.3

ffplay inference/output/try.jpg
