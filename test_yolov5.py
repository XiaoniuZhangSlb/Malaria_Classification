import torch
from PIL import Image
from matplotlib import pyplot as plt
import streamlit as st
import numpy as np
import math

model = torch.hub.load('yolov5', 'custom', path='yolov5/weights/species.pt', source='local')  # local repo
# model = torch.hub.load('ultralytics/yolov5', 'yolov5s', weights='yolov5_/weights/species.pt', local=)  # local repo
model.conf = 0.25  # NMS confidence threshold
im='/home/xiao/code/XiaoniuZhangSlb/Malaria_Classification/raw_data/MP-IDB-The-Malaria-Parasite-Image-Database-for-Image-Processing-and-Analysis-master/Falciparum/img/1305121398-0001-R_S.jpg'
img = Image.open(im)
results = model(img, size=1280)  # custom inference size
r_img = results.render() # returns a list with the images as np.array
img_with_boxes = r_img[0] # image with boxes as np.array
st.image(Image.fromarray(img_with_boxes))

crops = results.crop(save=False)

for i in range(math.ceil(len(crops) / 3)):
    cols = st.columns(3)
    for index, element in enumerate(crops):
        image = Image.fromarray(element['im'])
        cols[index].image(image, caption=element['label'], width=200)
# # Results
# results.print()
# results.show()

# results.xyxy[0]  # im1 predictions (tensor)
# results.pandas().xyxy[0]  # im1 predictions (pandas)
# print(results.pandas().xyxy[0])
