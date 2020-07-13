# Full env for mmdet including 
1. A docker file with cuda 10.1 and 10.2 (two different ones) 
2. mmdet instaltion script that has all the dependencies 
3. mmdet compilation 
4. For testing, Need to download COCO format https://www.kaggle.com/jqeric/wheatcoco and soft link it ot the data folder under mmdet (instead of real COCO) 
5. Need to download all the mmdet trained models (PTH files) such as Gfocal variantes, for instance https://github.com/open-mmlab/mmdetection/tree/master/configs/gfl 
6. Need to download detection backbones such as resnext101
