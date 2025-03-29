
sed -i 's/def forward(self, x):/def _forward_(self, x):/g' models/yolo.py
sed -i 's/def __forward__(self, x):/def forward(self, x):/g' models/yolo.py

export PYTHONPATH="$PWD" && python models/export.py --weights runs/exp5/weights/best.pt --img-size 672 --batch-size 1

sed -i 's/def forward(self, x):/def __forward__(self, x):/g' models/yolo.py
sed -i 's/def _forward_(self, x):/def forward(self, x):/g' models/yolo.py

# only export form this https://github.com/D-Robotics/rdk_model_zoo/tree/main/demos/detect/YOLOv5
#    def __forward__(self, x):
#        return [self.m[i](x[i]).permute(0,2,3,1).contiguous() for i in range(self.nl)]
