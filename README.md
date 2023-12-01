# Project Intro
- Make classification models that detect if the blood is infected by a parasite
- Make classification models that detect the species of the parasite
- Make your own bounding box from raw microscopy images with yolo.
- Make a web interface that can take a image and give back diagnostic and CDC recommendation
# Project Detail
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

## MALARIA Stages Bounging Box
### Dataset used: Plasmodium vivax
*Contact Muriel for any question*

### Source & References:
  - [Download link](https://data.broadinstitute.org/bbbc/BBBC041/malaria.zip) | [website (WITH BOUNDING BOX)] (https://data.broadinstitute.org/bbbc/BBBC041/)
  - Data: 1364 images (~80,000 cells)
  - Paper: [Hung J, Goodman A, Lopes S, Rangel G, Ravel D, Costa F, Duraisingh M, Marti M, Carpenter A. Applying Faster R-CNN for Object Detection on Malaria Images., arxiv, 2018](https://arxiv.org/abs/1804.09548)The authors want you to cite this other [paper](https://www.nature.com/articles/nmeth.2083)


### Description:
  - 1328 Images in total - not 1364 - training and test images mixed together.
  - Labeling has been done and the data is stored in 2 different json files for the training and testing sets respectively.
  - Data documentation indicates that there are 7 classes in the labeling including 4 stages of parasite (vivax) infestation stages, 2 uninfected labels (RBC and Leukocytes) and one “undefined” label classified as “difficult”.


### Purpose: how could the data be used?
  - Malaria vivax detection and characterization:
    -- Detect traces/evidences of malaria vivax infection
    -- Make inferences on the stage of malaria vivax infection


### Challenges:
  - Images size (1600 x 1200)
  - Bounding boxes data formatted in json: bounding box parameters extraction, calculation, normalization and exporting required for each labeling box and image
  - Images and bounding box files reconfiguration to suit Yolo format
  - Limited computational resources and limited platforms integration: frequent system crashes, data and work progress loss and associated NPT (non-productive time)
  - All images (train and test) saved in the same folder, without any option to differentiate them by name
  - Learning curve for Yolov8 et al.
  - Data imbalance
      | category       | count (train) | proportion  |
      |:--------------:|:-------------:|:-----------:|
      | red blood cell | 54162         | 0.965816    |
      | trophozoite    | 1036          | 0.018474    |
      | difficult      | 304           | 0.005421    |
      | ring           | 263           | 0.004690    |
      | schizont       | 127           | 0.002265    |
      | gametocyte     | 106           | 0.001890    |
      | leukocyte      | 81            | 0.001444    |


### Tasks completed to-date (Nov 30, 2023)
  - Coding various function to automate the Yolov8 and json files configuration process:
    -- create the data structure required to run Yolov8
    -- extract the labeling parameters from the json format
    -- calculate the respective parameters for each bounding box: *category_label, box_center_x, box_center_y, box_width, box_height*
    -- export the bounding boxes parameters specific to each image as individual .txt files
    -- sample 30% of the available training images as validation data
    -- reorganize the images according to their type (train, val, test) into corresponding folders
    -- write the yaml file automatically
  - Setup and a Yolov8 model.
  - Model results evaluation (in progress)


### What's next?
  - Run prediction with preliminary Yolov8 model and analyze the results
  - Address data imbalance by reducing the RBC(red blood cells) proportion in the training dataset and rerun Yolov8 model
  - Run an additional non-Yolo deep learning model to:
    -- option 1: benchmark Yolov8 model results
    -- option 2: use Yolov8 model for object detection purposes and the additional deep learning model for the classification of the stages
  - Integrate malaria vivax samples from other datasets and test model performance

# Overall Tasks
  - [x] Initial git repo
  - [x] data exploration in notebooks
  - [x] Define project object / strategy
  - [x] Data procesing
  - [] Implement ML models
  - [] Implement streamlit
  - [] Integration and testing
