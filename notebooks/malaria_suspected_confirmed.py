import pandas as pd
import streamlit as st


#LOAD dataset
total_suspected_cases_path = "/home/pcarrillo555/folder_lecture/Final_Project_Malaria/Data/WHO_malaria_no_microscopic_suspected_cases.csv"
suspected_cases_path ="/home/pcarrillo555/folder_lecture/Final_Project_Malaria/Data/WHO_malaria_microscopic_exams_suspected_cases.csv"
confirmed_cases_path ="/home/pcarrillo555/folder_lecture/Final_Project_Malaria/Data/WHO_malaria_microscopic_exams_positive_cases.csv"



def load_data(suspected_cases_path, confirmed_cases_path, total_suspected_cases_path):
    suspected_df = pd.read_csv(suspected_cases_path)
    confirmed_df = pd.read_csv(confirmed_cases_path)
    total_suspected_df = pd.read_csv(total_suspected_cases_path)  # Load additional suspected cases

    # Rename columns for clarity
    suspected_df.rename(columns={'Value': 'Suspected_Cases'}, inplace=True)
    confirmed_df.rename(columns={'Value': 'Confirmed_Cases'}, inplace=True)
    total_suspected_df.rename(columns={'Value': 'Total_Suspected_Cases'}, inplace=True)

    # Remove spaces and convert to float
    suspected_df['Suspected_Cases'] = suspected_df['Suspected_Cases'].replace(r'\s+', '', regex=True).astype(float)
    confirmed_df['Confirmed_Cases'] = confirmed_df['Confirmed_Cases'].replace(r'\s+', '', regex=True).astype(float)
    total_suspected_df['Total_Suspected_Cases'] = total_suspected_df['Total_Suspected_Cases'].replace(r'\s+', '', regex=True).astype(float)

    # Merge the datasets
    merged_df = pd.merge(suspected_df, confirmed_df, on=['ParentLocation', 'Location', 'Period'], how='inner')
    merged_df = pd.merge(merged_df, total_suspected_df, on=['ParentLocation', 'Location', 'Period'], how='inner')

    # Fill missing values with zeros
    merged_df['Suspected_Cases'].fillna(0, inplace=True)
    merged_df['Confirmed_Cases'].fillna(0, inplace=True)
    merged_df['Total_Suspected_Cases'].fillna(0, inplace=True)

    # Calculate the proportion of confirmed to suspected cases
    merged_df['Proportion'] = merged_df['Confirmed_Cases'] / merged_df['Suspected_Cases']

    # Filter out rows with zero suspected cases to avoid division by zero
    merged_df = merged_df[merged_df['Suspected_Cases'] != 0]

    return merged_df

merged_df = load_data(suspected_cases_path, confirmed_cases_path, total_suspected_cases_path)

# Streamlit app setup
st.title('Malaria Case Analysis')

# Dropdown to select a Parent Location
selected_parent_location = st.selectbox('Select a Parent Location', merged_df['ParentLocation'].unique())

# Filter the data based on the selected Parent Location
parent_location_data = merged_df[merged_df['ParentLocation'] == selected_parent_location]

# Dropdown to select a country, filtered by the selected Parent Location
selected_country = st.selectbox('Select a Country', parent_location_data['Location'].unique())

# Filter the data based on the selected country
country_data = parent_location_data[parent_location_data['Location'] == selected_country]

# Display the data
st.write('Proportion of Confirmed Malaria Cases to Suspected Cases:')
st.write(country_data[['Period', 'Total_Suspected_Cases','Suspected_Cases', 'Confirmed_Cases',  'Proportion']])
