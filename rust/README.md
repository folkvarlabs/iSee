# iSee

iSee is an OCR productivity tool that processes images of text and outputs the transcriptions to a text file.

## Requirements

- Rust and Cargo installed
- Tesseract and Leptonica libraries installed

## Building

To build the iSee tool, run the following command:

```bash
cargo build --release
```

This will create an optimized executable in the target/release directory.

## Usage

To use the iSee tool, run the following command:

```bash
./target/release/iSee "path/to/your/image/folder" "output_file.txt"
```

Replace `path/to/your/image/folder` with the path to the folder containing the images you want to process, and `output_file.txt` with the desired output file name.

The tool will prompt you to confirm whether you want to proceed with the OCR process. If you type "y" and press Enter, the process will begin, and the output will be saved to the specified file.

3. Implement the application logic in the `src/main.rs` file, as shown in the previous Rust example.

4. Initialize a Git repository and commit your changes:

```bash
git init
git add .
git commit -m "Initial commit"
```

You can now push your local repository to a remote GitHub repository. First, create a new repository named "iSee" on GitHub. Then, add the remote repository and push your local changes:

```bash
git remote add origin https://github.com/yourusername/iSee.git
git push -u origin main
```

Make sure to replace `yourusername` with your GitHub username and use the appropriate remote URL for your repository.

With this setup, you have created a Rust application with a clear directory structure and the necessary files for building and using the iSee tool.