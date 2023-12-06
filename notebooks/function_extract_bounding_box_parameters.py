import os
import pandas as pd

# Define paths and parameters for txt
#folder_A_path_annotations = "/content/drive/My Drive/Colab Notebooks/Le_Wagoon/Final_Project/Malaria/raw_data/Extracted_Files/Extracted_NIH-NLM-ThickBloodSmearsU/NIH-NLM-ThickBloodSmearsU/Annotations"  # Folder with subfolders that have .txt  files per patient UNINFECTED with annotations of each White cell
#folder_B_path_annotations = "/content/drive/My Drive/Colab Notebooks/Le_Wagoon/Final_Project/Malaria/raw_data/Extracted_Files/Extracted_NIH-NLM-ThickBloodSmearsPV/NIH-NLM-ThickBloodSmearsPV/All_annotations"     # Folder with subfolders that have .txt  files per patient INFECTED VIVAX with annotations of each parasite in circle
folder_C_path_annotations = "/content/drive/My Drive/Colab Notebooks/Le_Wagoon/Final_Project/Malaria/raw_data/Extracted_Files/Extracted_ThickBloodSmears_150/GT_updated"     # Folder with subfolders that have .txt  files per patient INFECTED VIVAX with annotations of each parasite in circle

# Define paths and parameters for images
#folder_A_path = "/content/drive/My Drive/Colab Notebooks/Le_Wagoon/Final_Project/Malaria/raw_data/Extracted_Files/Extracted_NIH-NLM-ThickBloodSmearsU/NIH-NLM-ThickBloodSmearsU/Uninfected Patients"  # Folder with subfolders that have .tiff files per patient UNINFECTED 1141 images
#folder_B_path = "/content/drive/My Drive/Colab Notebooks/Le_Wagoon/Final_Project/Malaria/raw_data/Extracted_Files/Extracted_NIH-NLM-ThickBloodSmearsPV/NIH-NLM-ThickBloodSmearsPV/All_PvTk"     # Folder with subfolders that have .jpg files per patient VIVAX 3014 images
folder_C_path = "/content/drive/My Drive/Colab Notebooks/Le_Wagoon/Final_Project/Malaria/raw_data/Extracted_Files/Extracted_ThickBloodSmears_150"     # Falciparum Folder with subfolders that have .jpg files per patient 1883 images total

# Extract base names for images and text files
images = [os.path.splitext(file)[0] for subdir, dirs, files in os.walk(folder_C_path) for file in files if file.endswith('.jpg')]
texts = [os.path.splitext(file)[0] for subdir, dirs, files in os.walk(folder_C_path_annotations) for file in files if file.endswith('.txt')]

# Create DataFrames
df_images = pd.DataFrame(images, columns=['Base Name'])
df_texts = pd.DataFrame(texts, columns=['Base Name'])

# Merge the DataFrames on the base name, which will let us identify only the .jpg files that have a .txt file
df_merged = pd.merge(df_images, df_texts, on='Base Name', how='outer', indicator=True)

# Add original extensions to the base names
df_merged['Image Name'] = df_merged['Base Name'] + '.jpg'
df_merged['Text File Name'] = df_merged['Base Name'] + '.txt'

# Filter out rows where a match was found in both dataframes
matched_images = df_merged[df_merged['_merge'] == 'both']


### CODE TO EXTRACT FILES, CONVERT AND NORMALIZE DATA NEEDED FOR BOUNDING BOX

import os

def convert_circle_to_bbox(x_center, y_center, x_circum, y_circum, img_width, img_height):
    radius = ((x_center - x_circum)**2 + (y_center - y_circum)**2)**0.5
    x_cen = x_center / img_width
    y_cen = y_center / img_height
    width = (2 * radius) / img_width
    height = (2 * radius) / img_height
    return x_cen, y_cen, width, height

def process_annotations_for_image(image_name, annotations_folder):
    txt_file_name = os.path.splitext(image_name)[0] + '.txt'
    txt_file_path = None

    for subdir, dirs, files in os.walk(annotations_folder):
        if txt_file_name in files:
            txt_file_path = os.path.join(subdir, txt_file_name)
            break

    if txt_file_path and os.path.exists(txt_file_path):
        with open(txt_file_path, 'r') as f:
            lines = f.readlines()
            img_info = lines[0].strip().split(',')
            img_width, img_height = float(img_info[2]), float(img_info[1])

            for line in lines[1:]:  # Skip the first line as it contains image info
                parts = line.strip().split(',')
                if len(parts) >= 9 and parts[1] == 'Parasite' and parts[3] == 'Circle':
                    x_center, y_center = float(parts[5]), float(parts[6])
                    x_circum, y_circum = float(parts[7]), float(parts[8])
                    x_cen, y_cen, width, height = convert_circle_to_bbox(x_center, y_center, x_circum, y_circum, img_width, img_height)

                    yolo_file_name = os.path.splitext(image_name)[0] + '_yolo2.txt'
                    yolo_file_path = os.path.join(subdir, yolo_file_name)

                    with open(yolo_file_path, 'a') as yolo_file:
                        yolo_file.write(f"0 {x_cen} {y_cen} {width} {height}\n")
    else:
        print(f"Annotation file not found for image: {image_name}")


#HOW TO USE AND EXTRACT THE DATA
annotations_folder = "Your directory where the txt files are/main_folder"

image_list = matched_images["Image Name"]


for image in image_list:
    process_annotations_for_image(image, annotations_folder)
