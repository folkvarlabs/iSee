#!/bin/bash

# Create a new Rust project
cargo new iSee
cd iSee

# Add dependencies to Cargo.toml
cat <<EOT >> Cargo.toml
tesseract-rs = "0.9.0"
leptonica-sys = "0.3.0"
walkdir = "2.3.2"
EOT

# Create a README.md file
cat <<EOT >> README.md
# iSee

iSee is an OCR productivity tool that processes images of text and outputs the transcriptions to a text file.

## Requirements

- Rust and Cargo installed
- Tesseract and Leptonica libraries installed

## Building

To build the iSee tool, run the following command:

\`\`\`bash
cargo build --release
\`\`\`

This will create an optimized executable in the \`target/release\` directory.

## Usage

To use the iSee tool, run the following command:

\`\`\`bash
./target/release/iSee "path/to/your/image/folder" "output_file.txt"
\`\`\`

Replace \`path/to/your/image/folder\` with the path to the folder containing the images you want to process, and \`output_file.txt\` with the desired output file name.

The tool will prompt you to confirm whether you want to proceed with the OCR process. If you type "y" and press Enter, the process will begin, and the output will be saved to the specified file.
EOT

# Initialize a Git repository and commit changes
git init
git add .
git commit -m "Initial commit"
