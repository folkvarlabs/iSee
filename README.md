# iSee

iSee is a comprehensive solution for translating text, transcribing images, and processing audio files using various backends (Python, Rust, and JavaScript). 

The application aims to integrate OpenAI's Whisper ASR API to transcribe audio files into text, and optical character recognition (OCR) for image-based text extraction. 

Furthermore, iSee is designed to handle live video feed data translation for AI processing.

Our goal is to make data entry and transcription more efficient and accurate, and to eventually:
- integrate the application with other AI services.
- Compare reciept to records to ensure accuracy.
- Transfer data faster & more securly
- Ensure compliance, while also being compatible with other systems.
- Allow people with any background to use the application to create, develop, and utilize this automation tool to make their lives easier, while also expand humans capabilities.

## Frontend

- ReactJS: A user-friendly graphical user interface (GUI) to interact with the application.

## Backend

- Python: A Python-based backend for OCR and audio file processing.
- Rust: A Rust-based backend for OCR and audio file processing.
- JavaScript: A JavaScript-based backend for OCR and audio file processing.

## Infrastructure

iSee utilizes Terraform for infrastructure management and ZeroTier for networking architecture.

## Directory Structure

The iSee project is organized into the following directories:

- `config`: Contains provisioning bash scripts for Python, Rust, JavaScript, Terraform, and ZeroTier.
- `docs`: Contains the technical documentation, including the README, man pages, troubleshooting guide, and help document.
- `infra`: Contains directories for each application version (Python, Rust, JavaScript), frontend, backend, Terraform, and ZeroTier.

## Setup

1. Clone the iSee repository.
2. Run the setup scripts in the following order:
   - `setup_directories.sh`
   - `generate_docs.sh`
   - `create_configs.sh`
3. Populate the directories with appropriate files and code for each part of the project, such as the ReactJS frontend, Python/Rust/JavaScript backends, and Terraform configuration files.
4. Run the corresponding provisioning scripts from the `config` directory to set up the desired backend.

## Usage

After setting up the application, use the ReactJS frontend to interact with the OCR and audio transcription functionalities. Upload images or audio files, and the application will process them using the selected backend, providing the transcribed text as output.

## Contributing

We welcome contributions to iSee! If you would like to contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch for your changes.
3. Commit your changes to the branch and push them to your fork.
4. Open a pull request, detailing the changes you made and why.

## License

iSee is released under the [MIT License](LICENSE).
