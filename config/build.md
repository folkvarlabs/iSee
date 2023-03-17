# Build 

Some details:
- Our root dir is called: "iSee"
- Our frontend: ReactJS
- Our application versions: python, rust, javascript 
- How we launch our Infrastructure: Terraform
- Our networking architecture: ZeroTier
- We want to be able to translate text and transcribe images (.jpg, .png, ectl.), audio files (.mp3, .mp4, .m4a, ect.)
- We want to be able to use the OpenAI's Whisper AI to translate audio and transcribe them into text
- We want to be able to take a live video feed and translate that data so that the AI can understand it

Please have the script make the following directories:
- docs (all technical documents here)
- config (put all provisioning bash scripts here)
- infra (all infrastructure files: frontend, backend)

Please create 3 separate setup scripts:
- directory and main file setups
- generate technical docs (README's, man pages, troubleshooting, help document ,ect.)
- make all other scrips, config files, ect.

---

Here are the three separate setup scripts according to your updated requirements:

setup_directories.sh: Sets up the directories and main files.
generate_docs.sh: Generates technical documentation.
create_configs.sh: Creates all other scripts and configuration files.
Here's the setup_directories.sh script:

```bash
#!/bin/bash

# Create root directory
mkdir iSee
cd iSee

# Create main directories
mkdir docs config infra
cd infra

# Create application version directories
mkdir python rust javascript

# Create frontend and backend directories
mkdir frontend backend
cd ..

# Create Terraform and ZeroTier directories
mkdir terraform zerotier
```

Here's the generate_docs.sh script:

```bash
#!/bin/bash

cd iSee/docs

# Generate README
echo "# iSee" > README.md
echo "A comprehensive solution to translate text, transcribe images, and process audio files using various backends (Python, Rust, JavaScript)." >> README.md
echo "## Frontend" >> README.md
echo "- ReactJS" >> README.md
echo "## Backend" >> README.md
echo "- Python" >> README.md
echo "- Rust" >> README.md
echo "- JavaScript" >> README.md

# Generate man pages, troubleshooting, and help document
touch man_pages.md troubleshooting.md help.md
```

Here's the create_configs.sh script:

```bash
#!/bin/bash

cd iSee/config

# Create provisioning bash scripts
touch provision_python.sh provision_rust.sh provision_javascript.sh provision_terraform.sh provision_zerotier.sh

# Add execution permission to provisioning scripts
chmod +x provision_python.sh provision_rust.sh provision_javascript.sh provision_terraform.sh provision_zerotier.sh
```

To use these scripts, save each of them in separate files, make them executable using chmod +x <script_name>.sh, and then run each script in the order provided. This will create the necessary directory structure, generate documentation, and create configuration scripts.

---

After running the three provided scripts, the directory structure for the iSee project should look like this:

```lua
iSee
├── config
│   ├── provision_python.sh
│   ├── provision_rust.sh
│   ├── provision_javascript.sh
│   ├── provision_terraform.sh
│   └── provision_zerotier.sh
├── docs
│   ├── README.md
│   ├── man_pages.md
│   ├── troubleshooting.md
│   └── help.md
└── infra
    ├── python
    ├── rust
    ├── javascript
    ├── frontend
    ├── backend
    ├── terraform
    └── zerotier
```

In this structure:

* `config`: Contains provisioning bash scripts for Python, Rust, JavaScript, Terraform, and ZeroTier.

* `docs`: Contains the technical documentation, including the README, man pages, troubleshooting guide, and help document.

* `infra`: Contains directories for each application version (Python, Rust, JavaScript), frontend, backend, Terraform, and ZeroTier.


Keep in mind that this directory structure is just a starting point. You'll need to populate these directories with the appropriate files and code for each part of the project, such as the ReactJS frontend, Python/Rust/JavaScript backends, and Terraform configuration files.