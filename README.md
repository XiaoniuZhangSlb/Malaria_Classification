# Project Intro
# Project Detail
# Tasks
  - [x] Initial git repo
  - [x] data exploration in notebooks
  - [ ] Define project object / strategy



***

## Dataset used: Plasmodium vivax
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
