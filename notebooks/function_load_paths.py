# Function to load the path of each image in a list called data_path and label each of them in the list labels
def load_paths_from_folder(folder, image_type, label ):
    data_path = []
    labels = []
    for patient_folder in os.listdir(folder):
        patient_dir = os.path.join(folder, patient_folder)
        if os.path.isdir(patient_dir):
            #count = 0  # Counter for images per subfolder
            for img_file in os.listdir(patient_dir):
                if img_file.lower().endswith(image_type.lower()):
                    img_path = os.path.join(patient_dir, img_file)
                    #img = load_img(img_path, target_size=image_size)
                    #img_array = img_to_array(img)
                    relative_path = img_path.split('/')[9:] # seleccionar el path especifico de la imagen, en una lista
                    relative_path = '/'.join(relative_path) # unir los elementos de la lista con una /
                    data_path.append(relative_path) # append el relative path como string a la lista final
                    labels.append(label)
    return data_path, labels
