import numpy as np
import os
from PIL import Image
def load_image_data(image, ratio=1, resize=None):

    imgs = []
    # Get the original dimensions
    if resize:
        new_width = resize[0]
        new_height = resize[1]
    else:
        original_width, original_height = image.size
        # Calculate the new dimensions based on the ratio
        new_width = int(original_width * ratio)
        new_height = int(original_height * ratio)

    # Resize the image
    resized_image = image.resize((new_width, new_height))

    imgs.append(np.array(resized_image))
    img_data = np.array(imgs)
    return img_data
