# Python

## Pros

1. **Easier and faster development**: Python is generally more beginner-friendly, and its concise syntax makes it easier and quicker to develop and maintain.

2. **Larger ecosystem and libraries**: Python has an extensive ecosystem with many libraries and tools available for various purposes, making it easier to find solutions or integrate additional features.

3. **Cross-platform compatibility**: Python is cross-platform and can run on many different operating systems with little modification.

## Cons

1. Performance: Python is an interpreted language, which often results in slower execution compared to compiled languages like Rust.

2. Multi-threading limitations: Python's Global Interpreter Lock (GIL) can be a limitation in certain scenarios where efficient multi-threading is required.

---

# Build 

To set up the Python version of the iSee application, create a bash script that automatically sets up the files and directories. Save the following script as setup_iSee_python.sh:

```bash
#!/bin/bash

# Create a new directory for the iSee Python project
mkdir iSee_python
cd iSee_python

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
```

To run the script, open a terminal, navigate to the directory containing the setup_iSee_python.sh file, and execute the following command:

```bash
chmod +x setup_iSee_python.sh
./setup_iSee_python.sh
```

This script will create the iSee Python application with the appropriate directory structure and files, set up a virtual environment, and install the necessary Python packages. It will also initialize a Git repository and make an initial commit.

Make sure to replace the placeholder in the main.py file with the correct path to the Tesseract executable on your system