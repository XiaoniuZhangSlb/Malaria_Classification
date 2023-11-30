# Project Intro

# Project Detial
## Species classification Dataset detail
- Dataset summary
  - Kaggle dataset <br/>
  This Dataset contains Four Species of malaria images:
    - Plasmodium falciparum: 100
    - Plasmodium vivax: 29
    - Plasmodium malariae:37
    - Plasmodium ovale:40
  - Issues:
    * Inbalanced dataset
    * big image: 2592 x 1944
    * no bounding box, but has black/white image that highlights the infected cells.
    * the labeled data is not enough to do object detections to label the different species
  - Data processing needed:
    * resize the image to small size
    * generate bounding box coordinates from the black and white image
- Models
  - CNN model to predict the species
  - bounding box to label the parasites
# Tasks
  - [x] Initial git repo
  - [x] data exploration in notebooks
  - [x] Define project object / strategy
  - [x] Data procesing
  - [] Implement ML models
  - [] Implement streamlit
  - [] Integration and testing
