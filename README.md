# Project Intro
- Make classification models that detect if the blood is infected by a parasite
- Make classification models that detect the species of the parasite
- Make your own bounding box from raw microscopy images with yolo.
- Make a web interface that can take a image and give back diagnostic and CDC recommendation
# Project Detial
## MALARIA Species classification
- Dataset summary
  - Kaggle dataset <br/>
  This Dataset contains Four Species of malaria images:
    - Plasmodium falciparum: 100
    - Plasmodium vivax: 29
    - Plasmodium malariae:37
    - Plasmodium ovale:40
  - Issues:
    - Inbalanced dataset
    - big image: 2592 x 1944
    - no bounding box, but has black/white image that highlights the infected cells.
    - the labeled data is not enough to do object detections to label the different species
  - Data processing needed:
    - resize the image to small size
    - generate bounding box coordinates from the black and white image
- Models
  - CNN model to predict the species
  - bounding box to label the parasites

## MALARIA binary classification
### Data availability:
- source of datasets: NHI
- three main datasets from thick blood smears (Total= 6038 images):
    - 1141 images(format:.tiff) of uninfected samples, indicated by pointswith its coordinates
    - 3014 images (format: .jpg)of infected samples with vivax, indicated by circular bounding box with circular indicators
    - 1883 images(format: .jpg) of infected with falciparum indicated by circular bounding box with circular indicators
    - each sample has an associated annotation files countaining information about  bound boxes highlighting infected cells,
    - Bounding boxe info: coordinates of the circle Center , coordinates of one point of the circumference)
    - uninfected samples don't ha
### TASK DONE
    - Image data preprocessing: file format conversion (from jpg & tiff to tensor)
    - CNN model allowing to detect the presence of malaria without bounding boxes
    - CNN model(Input=Images, output=categorical classification) allowing to detect the presence of malaria without using bounding boxes
### COMPLETED ACTIVITIES
-Image data preprocessing: completed
    - data exploration
    - data gathering
    - data conditioning: resize, normalization


### ONGOING ACTIVITIES
- reformating the bound boxes annotation files of the 6000 images: ongoing

### WAY FORWARD:
- create a second model using YOLO (input: Images+bounding boxes, output: image with bounding box around the parasite and type of specimen(classification))

### CHALLENGES
- Unorganized datasets requiring some time for data exploration, understanding and preparation+++
- Limited information about all different species
- 50% of the images are from one specimen (vivax) : may lead to an umbalanced model
- Missing images of one specie (malarea)
- poor network making the training exercise difficult

### TOMORROW TASK:
- create a branch and push to the master project
- ideas about the final deliverables(presentation)
# Overall Tasks
  - [x] Initial git repo
  - [x] data exploration in notebooks
  - [x] Define project object / strategy
  - [x] Data procesing
  - [] Implement ML models
  - [] Implement streamlit
  - [] Integration and testing
