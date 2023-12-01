class Prediction():
    def __init__(self):
        #self.load_models()
        pass
    def load_models(self):
        pass
    def run_binary_classification(self,image):
        # TO-DO: call the binary classfication model to classify the image
        # y_pred = binary_model.predict(image)
        return 1

    def run_species_classification(self,image):
        # TO-DO: call the species classfication model to classify the image
        # y_pred = specis_model.predict(image)
        return "Malariae"

    def run_parasite_boundingbox(self,image):
        # TO-DO: call the boundingbox model to lable the parasites
        # y_pred = specis_bb_model.predict(image)
        return image

    def run_stages_boundingbox(self,image):
        # TO-DO: call the boundingbox model to lable the stages
        # y_pred = stages_bb_model.predict(image)
        return image
