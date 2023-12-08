import streamlit as st
from fpdf import FPDF
import base64
import numpy as np
from tempfile import NamedTemporaryFile
from PIL import Image
from prediction import Prediction
import image_utils
import os
import math
from chatbot import load_page

class PDFWithTextAndImage(FPDF):
    def header(self):
        # Arial bold 15
        # Title
        title='Malaria Screen and Identification Report'
        self.set_font('Arial', 'B', 15)
        # Calculate width of title and position
        w = self.get_string_width(title) + 6
        self.set_x((210 - w) / 2)
        # Colors of frame, background and text
        self.set_draw_color(0, 80, 180)
        self.set_fill_color(230, 230, 0)
        self.set_text_color(220, 50, 50)
        # Thickness of frame (1 mm)
        self.set_line_width(1)

        self.cell(w, 9, title, 1, 1, 'C', 1)
        # Line break
        self.ln(10)

    def footer(self):
        self.set_y(-15)
        self.set_font('Arial', 'I', 8)
        self.cell(0, 10, 'Page %s' % self.page_no(), 0, 0, 'C')

    def add_text_and_image(self, text, imagefile):
        # Set font for the text
        self.set_font("Arial", size=12)

        # Add text to the PDF
        self.cell(200, 10, txt=text, ln=True, align='L')

        # Add image to the PDF
        self.ln(10)  # Add some space after the text
        if imagefile:
            # print(imagefile)
            # self.image(imagefile, x=20, y=self.get_y(), w=170)
            self.image(imagefile, w=170, h=150)
        self.ln(10)  # Add some space after the text

    def add_text_annotation(self, x, y, title, content, uri=None):
        self.add_text_markup_annotation(title, content, uri=uri)

prediction = Prediction()

report_images = []

def create_download_link(val, filename):
    b64 = base64.b64encode(val)  # val looks like b'...'
    return f'<a href="data:application/octet-stream;base64,{b64.decode()}" download="{filename}.pdf">Download file</a>'

def print_pdf(pdf):
    html = create_download_link(pdf.output(dest="S").encode("latin-1"), "report")
    st.markdown(html, unsafe_allow_html=True)

# Function to display the Main Page
def main_page():

    # Get the absolute path to the current script
    script_path = __file__

    # Get the directory containing the script
    script_dir = os.path.dirname(script_path)

    # Specify the relative path to the image file in the same folder
    image_path = os.path.join(script_dir, 'file/malaria_map.png')
    # Set background color and padding
    st.markdown(
        """
        <style>
            body {
                background-image: url('{image_path}');
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
    col1, mid, col2 = st.columns([1,2,2])
    with col1:
        st.title(":red[Malaria] ")
    with mid:
        st.title("  _Detective_	:sleuth_or_spy:")
    with col2:
        # Get the path to the "files" folder
        files_folder = os.path.join(os.path.dirname(__file__), "files")
        # Add logo or image to the sidebar
        company_path = os.path.join(files_folder, "company_2.png")
        st.image(company_path, width=230)
    # st.title("Welcome to _AcuraAI_:heavy_plus_sign: _Lab_ !! \n :blue[Reliable], :green[Affortable] and :red[Fast] Solution for Maralia Detection!")
    st.subheader("Select the options from the :point_left: and see the :magic_wand: happens!")

    st.components.v1.iframe("https://ourworldindata.org/grapher/malaria-death-rates", height=500)

def image_info(image, title, msg):
    with NamedTemporaryFile(delete=False, suffix=".png") as tmpfile:
        image.save(tmpfile.name, format="PNG")
        #To-Do, add bbox predition
        report_image = {}
        report_image['title'] = title
        report_image['file'] = tmpfile.name
        report_image['result'] = msg
    return report_image
# Function to display the Screening Page
def screening_page():
    st.title("Screening")
   # Upload image through file uploader or drag and drop
    uploaded_file = st.file_uploader("Choose a thick smear image for a quick screen...", type=["jpg", "jpeg", "tiff"])

    if uploaded_file is not None:
        image = Image.open(uploaded_file)
        binary_image_data = image_utils.load_image_data(image, resize=[224,224])
        st.image(uploaded_file, caption="Uploaded Image", use_column_width=True)
        if st.button("Run Screening"):
            is_infected = prediction.run_binary_classification(binary_image_data)
            print("binary result is", is_infected)
            if is_infected == 'infected':
                st.subheader("Unfortunately :red[Malaria parasite(s)] detected in the sample. Please proceed as following:")
                st.subheader(':arrow_forward: Upload thin smear sample in the :blue[Identification] page for further diagnostics.')
                st.subheader(':arrow_forward: Check the following link for guideline of diagnostic and treatment.')
                st.markdown("[Diagnostic Procedure](https://www.cdc.gov/dpdx/diagnosticprocedures/blood/microexam.html)")

                st.markdown("[General Approach of Treatment](https://www.cdc.gov/malaria/resources/pdf/Malaria_Treatment_Table_202306.pdf)")

                report_image = image_info(image,"Screening", "Screening Result: Malaria found in sample")

                #report_images.append(report_image)
                st.session_state['export_screen'] = report_image['file']
            else:
                st.subheader("No Malaria found in the sample. Check the link below for prevention guidance.")
                st.markdown("[Prevention Guideline](https://www.cdc.gov/malaria/about/preventing_malaria.html)")
                st.markdown("[Travel Risk Assessment](https://www.cdc.gov/malaria/travelers/risk_assessment.html)")


                # print(report_image)
                # # Export
                # if 'export' not in st.session_state:
                #     st.session_state['export'] = ''
                # if st.button("Export as PDF"):
                #     st.session_state['export'] = 'yes'
                # if st.session_state['export'] == 'yes':
                #     # Create a PDF instance
                #     pdf = PDFWithTextAndImage()
                #     # Add a page to the PDF
                #     pdf.add_page()
                #     # Add text and image to the PDF
                #     pdf.add_text_and_image(
                #         "Screening Report Image",
                #         image  # Replace with the path to your image
                #     )
                #     print_pdf(pdf)

    # if st.button("Export"):
    #     images = []
    #     images.append(image)
    #     print_pdf(images)



# Function to display the Diagnostic Page
def diagnostic_page():
    st.title("Identification")
    uploaded_file = st.file_uploader("Upload a thin smear image for diagnosis", type=["jpg", "png", "jpeg"])

    if uploaded_file is not None:
        image = Image.open(uploaded_file)
        st.image(uploaded_file, caption="Thin smear image", use_column_width=True)
        # specis prediction
        if st.button("Run Identification"):
            st.session_state['button_identification'] = True
        if 'button_identification' in st.session_state and st.session_state['button_identification']:
            species_image_data = image_utils.load_image_data(image, resize=[648,486])
            species, prob = prediction.run_species_classification(species_image_data)
            st.subheader(f"Malaria identification _Species_ : :red[{species}]")
            # st.subheader(f"                 _Stage_ : :blue[{stages}]",divider='rainbow')
            st.subheader("Parasite cells are highlighted on the image below", divider='rainbow')
            # To-Do, Add BB box for stages
            results = prediction.run_parasite_boundingbox(image)
            r_img = results.render() # returns a list with the images as np.array
            img_with_boxes = Image.fromarray(r_img[0]) # image from np.array
            st.image(img_with_boxes, caption="Parasites detection with bounding box")

            if st.button("Show Parasite Cell Images and Stages"):
                st.session_state['button_crop'] = True
            if 'button_crop' in st.session_state and st.session_state['button_crop']:
                crops = results.crop(save=False)
                for i in range(math.ceil(len(crops) / 3)):
                    cols = st.columns(3)
                    for j in range(3):
                        index = i*3 + j
                        if index >= len(crops):
                            break
                        image = Image.fromarray(crops[index]['im'])
                        stage_image_data = image_utils.load_image_data(image, resize=[100,100])
                        stages, prob = prediction.run_stages_classification(stage_image_data * 255.)
                        with cols[j]:
                            st.image(image, use_column_width=True)
                            style='''
                            <style>.my_text {
                                            font-family:    Arial, Helvetica, sans-serif;
                                            font-size:      20px;
                                            font-weight:    bold;
                                        }
                            </style>
                            '''
                            mark = f'''
                            <html>
                            {style}
                            <div align="center" class="my_text">{stages}</div>
                            </html>
                            '''
                            st.markdown(mark, unsafe_allow_html=True)
            report_image = image_info(img_with_boxes,"Identification", f"Indentification result: The Malaria species found in the sample is: :red[{species}]")

            # report_images.append(report_image)
            st.session_state['export_diag'] = report_image['file']
            # print(report_image)export_diag
            # report_images.append(report_image)
            # if st.button("Export as PDF"):
            #     # Create a PDF instance
            #     pdf = PDFWithTextAndImage()
            #     # Add a page to the PDF
            #     pdf.add_page()
            #     # Add text and image to the PDF
            #     pdf.add_text_and_image(
            #         "Malaria Diagnosing Report Image",
            #         image  # Replace with the path to your image
            #     )
            #     print_pdf(pdf)
def generate_report(report_images, patient_info):
    # Create a PDF instance
    pdf = PDFWithTextAndImage()
    # Add a page to the PDF
    pdf.add_page()
    for k, v in patient_info.items():
        pdf.add_text_and_image(f"{k}: {v}", None)
    #breakpoint()
    if 'export_screen' in st.session_state:
        pdf.add_text_and_image('Screening', st.session_state['export_screen'])
    if 'export_diag' in st.session_state:
        pdf.add_text_and_image('Identification',  st.session_state['export_diag'])
    for image in report_images:
        pdf.add_text_and_image(image['title'], None)
        pdf.add_text_and_image(image["result"], image['file'])
    # Reference Pages
    # pdf.add_text_and_image("References", None)
    # pdf.add_text_annotation("CDC Malaria Info", "CDC Malaria Info", uri="https://www.cdc.gov/malaria/diagnosis_treatment/")
    return pdf

def report_page():
    st.title("Generate Report")

    # Input fields
    name = st.text_input("Name:", value='Mr. Health')
    age = st.number_input("Age:", step=1, value=34, format='%d')
    contact_number = st.text_input("Contact Number:", value='888-888-8888')
    medical_history = st.text_area("Medical History:", value="Traveled to Malaria-risk country in the last month. Got fever and headache in last week. ")

    # Button to generate the report
    if st.button("Generate Report"):
        if not name or not age or not contact_number:
            st.warning("Please fill in all required fields.")
        else:
            # Generate and display the report
            patiant_info = {
                "Name": name,
                "Age": age,
                "Contact Number": contact_number,
                "Medical History": medical_history
            }
            print(report_images)
            report = generate_report(report_images, patiant_info)
            print_pdf(report)

def link_page():
    st.title("Reference Resources")

    st.markdown("[CDC Blood Specimens Diagnostic Procedures](https://www.cdc.gov/dpdx/diagnosticprocedures/blood/microexam.html)")
    st.markdown("[Malaria related Data](https://ourworldindata.org/malaria)")
    st.markdown("[NIH Malaria Screener](https://lhncbc.nlm.nih.gov/LHC-research/LHC-projects/image-processing/malaria-screener.html)")

def chatbot_page():
    load_page()
    # st.write("welbome to chat page")

# Main Streamlit app
def main():

    # Set page title and favicon
    st.set_page_config(page_title="Welcome to AccuraAI Lab !", page_icon=":rocket:")

    # Get the path to the "files" folder
    files_folder = os.path.join(os.path.dirname(__file__), "files")
    # Add logo or image to the sidebar
    logo_path = os.path.join(files_folder, "company_2.png")
    st.sidebar.image(logo_path, width=200)

    st.sidebar.title("Navigation")
    if 'page' not in st.session_state:
        st.session_state['page'] = ''
    # Use buttons for navigation
    if st.sidebar.button("🦟 Main Page"):
        st.session_state['page'] = 'Main Page'

    if st.sidebar.button("🔬 Screening"):
        st.session_state['page'] = 'Screening Page'

    if st.sidebar.button("🏥 Identification"):
        st.session_state['page'] = 'Diagnostic Page'

    if st.sidebar.button("📝 Generate Report"):
        st.session_state['page'] = 'Report Page'
    if st.sidebar.button("💁 Addtional Information"):
        st.session_state['page'] = 'Link Page'
    if st.sidebar.button("👨‍💻 Virtual Assistant"):
        st.session_state['page'] = 'Chatbot Page'

    if st.session_state['page'] == 'Main Page':
        main_page()
    elif st.session_state['page'] == 'Screening Page':
        screening_page()
    elif st.session_state['page'] == 'Diagnostic Page':
        diagnostic_page()
    elif st.session_state['page'] == 'Report Page':
        report_page()
    elif st.session_state['page'] == 'Link Page':
        link_page()
    elif st.session_state['page'] == 'Chatbot Page':
        chatbot_page()

    for i in range(20):
        st.sidebar.text('')


if __name__ == "__main__":
    main()
