model_locations={
    "species": "./ml_models/species_model.keras",
    "binary": "./ml_models/binary_Walter.h5",
    "stages": "./ml_models/Vivax_stages_model.h5",
}
species_model_classes = {0:'Falciparum', 1:'Malariae', 2:'Ovale', 3:'Vivax'}
binary_model_classes = {0:'uninfected', 1:'infected'}
stages_model_classes= {0: 'Gametocyte', 1:'Red blood cell', 2:'Ring', 3:'Schizont', 4:'Trophozoite'}
