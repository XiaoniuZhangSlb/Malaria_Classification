def txt_to_csv(txt_files_directory, csv_files_directory):
    csv_files_directory=os.path.join('data/ANNOTATIONS', 'falciparum_csv')
    txt_files_directory=os.path.join('data','ANNOTATIONS', 'falciparum')


    for txt_file_name in os.listdir(txt_files_directory):
        if txt_file_name.endswith('.txt'):
            txt_file_path = os.path.join(txt_files_directory, txt_file_name)
            csv_file_name = os.path.splitext(txt_file_name)[0] + '.csv'
            csv_file_path = os.path.join(csv_files_directory, csv_file_name)
            with open(txt_file_path, 'r') as txt_file:
                lines = [line.strip().split() for line in txt_file]

            with open(csv_file_path, 'w', newline='') as csv_file:
                csv_writer = csv.writer(csv_file)
                csv_writer.writerows(lines)
    print("txt to csv Conversion completed.")
