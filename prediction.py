from tensorflow.keras import layers, models
import config
import numpy as np
import torch
from PIL import Image

class Prediction():
    def __init__(self):
        self.models = {}
        self.load_models()

    def load_models(self):
        for k, v in config.model_locations.items():
            self.models[k]= models.load_model(v)
    def run_binary_classification(self,X):
        # TO-DO: call the binary classfication model to classify the image
        predictions = self.models['binary'].predict(X)
        print(predictions[0])
        if predictions[0] > 0.8:
            return "infected"
        else:
            return "uninfected"

    def run_species_classification(self,X):
        # Make predictions
        predictions = self.models['species'].predict(X)
        print(f"species prediction result: {predictions[0]}")
        index = np.argmax(predictions[0])
        return config.species_model_classes[index], max(predictions[0])
    def run_parasite_boundingbox(self,image):
        # TO-DO: call the boundingbox model to lable the parasites
        model = torch.hub.load('yolov5', 'custom', path='ml_models/yolov5_weights/species.pt', source='local')  # local repo
        model.conf = 0.3  # NMS confidence threshold
        results = model(image, size=1280)  # custom inference size
        return results

    def run_stages_classification(self,X):
        # TO-DO: call the boundingbox model to lable the stages
        predictions = self.models['stages'].predict(X)
        print(f"stages prediction result: {predictions[0]}")
        index = np.argmax(predictions[0])
        return config.stages_model_classes[index], max(predictions[0])
