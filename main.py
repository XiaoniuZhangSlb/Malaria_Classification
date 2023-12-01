# The main program the run the streamlit app
import streamlit as st
import io
import numpy as np
from PIL import Image
from prediction import Prediction


# Set page title and favicon
st.set_page_config(page_title="Welcome to Malaria Detection with Deep Learning!", page_icon=":rocket:")

# Set background color and padding
st.markdown(
    """
    <style>
        body {
            background-color: #f4f4f4;
            padding: 1rem;
        }
        .st-bw {
            border-width: 0.3rem;
        }
    </style>
    """,
    unsafe_allow_html=True
)

# Set title and description
st.title("Welcome to _Malaria_ _Detection_ with :red[Deep Learning]!!:performing_arts:")
st.subheader("Upload an image, and see the :blue[magic] :magic_wand: happens!",  divider='rainbow')
# Upload image through file uploader or drag and drop
uploaded_file = st.file_uploader("Choose an image...", type="jpg")

prediction = Prediction()

# Button to run image processing
if uploaded_file is not None:
    image = Image.open(uploaded_file)

    # Display the uploaded image
    st.image(image, caption="Uploaded Image", use_column_width=True)
    # Run image processing (replace this with your actual processing logic)
    is_infected = prediction.run_binary_classification(image)
    if is_infected:
        st.subheader("The patient is infected with :red[Malarias!], we will further help you with the species and stages", divider='rainbow')

        # specis prediction
        species = prediction.run_species_classification(image)
        st.subheader(f"The predict species is: :red[{species}]", divider='rainbow')

        # parastie boundingbox
        st.subheader("Predicted parasites indentified with boudning box :black_square_button: the Image", divider='rainbow')
        parasite_image = prediction.run_parasite_boundingbox(image)
        st.image(parasite_image, caption="Predicted parasites indentified the Image", use_column_width=True)

        # parastie boundingbox
        stages_image = prediction.run_stages_boundingbox(image)
        st.subheader("Predicted stages indentified with boudning box :black_square_button: the Image", divider='rainbow')
        st.image(parasite_image, caption="Predict stages indentified in the image", use_column_width=True)
        st.subheader("Image classfication completed!")
    else:
        st.write("No Malarias parasites found in the image")
# Instructions if no image is uploaded
else:
    st.write("Please upload an image.")

# Additional content or instructions can be added here
