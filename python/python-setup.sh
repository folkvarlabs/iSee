#!/bin/bash

# Create a new directory for the iSee Python project
mkdir iSee/python
cd iSee/python

# Create a virtual environment
python3 -m venv venv
source venv/bin/activate

# Install necessary Python packages
pip install opencv-python-headless pytesseract

# Create a main.py file
cat <<EOT >> main.py
import cv2
import pytesseract
from pathlib import Path

# Replace the following line with the path to the Tesseract executable on your system
# pytesseract.pytesseract.tesseract_cmd = "/path/to/tesseract"

def process_images(input_folder, output_file_name):
    transcribed_text = []

    for file_path in Path(input_folder).glob('*.*'):
        file_extension = file_path.suffix.lower()

        if file_extension in ['.jpg', '.jpeg', '.png']:
            image = cv2.imread(str(file_path))
            text = pytesseract.image_to_string(image)
            transcribed_text.append(text)

    with open(output_file_name, "w") as output_file:
        output_file.write("\n".join(transcribed_text))

input_folder = input("Enter the input folder path: ")
output_file_name = input("Enter the output file name: ")

process_images(input_folder, output_file_name)
print("OCR process completed.")
EOT

# Create a README.md file
cat <<EOT >> README.md
# iSee (Python)

iSee is an OCR productivity tool that processes images of text and outputs the transcriptions to a text file.

## Requirements

- Python 3
- opencv-python-headless
- pytesseract

## Setup

1. Create a virtual environment:

\`\`\`bash
python3 -m venv venv
\`\`\`

2. Activate the virtual environment:

- On Unix or Linux:

\`\`\`bash
source venv/bin/activate
\`\`\`

- On Windows:

\`\`\`bash
venv\Scripts\activate
\`\`\`

3. Install the required packages:

\`\`\`bash
pip install opencv-python-headless pytesseract
\`\`\`

## Usage

To use the iSee tool, run the following command:

\`\`\`bash
python main.py
\`\`\`

You will be prompted to enter the input folder path and the output file name. The tool will process the images and save the transcriptions to the specified output file.
EOT

# Initialize a Git repository and commit changes
git init
git add .
git commit -m "Initial commit"
