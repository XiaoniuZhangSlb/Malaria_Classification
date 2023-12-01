# Project Intro
# Project Detial
# Tasks

# MALARIA detection : Detect and Classify malaria infected cells to allow faster diagnoses
  - Make 2 classification models that detect if the blood is infected by a parasite
  - Make 2 classification models that detect the species of the parasite, one from thick smears and one from thin smears
  - Make bounding box from raw microscopy images with yolo
  - Make a web interface that can take a thick smear and a thin smear to give back diagnostic and CDC recommendations.

# Data availability:
- source of datasets: NHI
- three main datasets from thick blood smears (Total= 6038 images):
    - 1141 images(format:.tiff) of uninfected samples, indicated by pointswith its coordinates
    - 3014 images (format: .jpg)of infected samples with vivax, indicated by circular bounding box with circular indicators
    - 1883 images(format: .jpg) of infected with falciparum indicated by circular bounding box with circular indicators
    - each sample has an associated annotation files countaining information about  bound boxes highlighting infected cells,
    - Bounding boxe info: coordinates of the circle Center , coordinates of one point of the circumference)
    - uninfected samples don't ha
## TASK DONE
    - Image data preprocessing: file format conversion (from jpg & tiff to tensor)
    - CNN model allowing to detect the presence of malaria without bounding boxes
    - CNN model(Input=Images, output=categorical classification) allowing to detect the presence of malaria without using bounding boxes
# COMPLETED ACTIVITIES
-Image data preprocessing: completed
    - data exploration
    - data gathering
    - data conditioning: resize, normalization 
    

# ONGOING ACTIVITIES
- reformating the bound boxes annotation files of the 6000 images: ongoing

# WAY FORWARD: 
- create a second model using YOLO (input: Images+bounding boxes, output: image with bounding box around the parasite and type of specimen(classification))

# CHALLENGES
- Unorganized datasets requiring some time for data exploration, understanding and preparation+++
- Limited information about all different species
- 50% of the images are from one specimen (vivax) : may lead to an umbalanced model
- Missing images of one specie (malarea)
- poor network making the training exercise difficult

### TOMORROW TASK:
- create a branch and push to the master project
- ideas about the final deliverables(presentation) 