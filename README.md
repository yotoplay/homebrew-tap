# 🧃 Yoto Homebrew Tap

Welcome to the official Yoto Homebrew tap! This repository contains custom Homebrew formulas for installing Yoto CLI tools.

## 🔧 Installation

First, add the tap:

```bash
brew tap yotoplay/tap
```

Then install the available tools:

```bash
# Install twine-to-yoto converter
brew install twine-to-yoto
```

## 📦 Available Tools

### twine-to-yoto
A CLI tool that converts Twine/Twee documents to TweeJSON and YotoJSON formats.

```bash
# Check if installation was successful
twine2yoto --help
```

## 🤝 Contributing

We welcome contributions! Here's how you can help:

### Adding a New Formula

1. **Create a new formula file** in the `Formula/` directory:
   ```bash
   touch Formula/your-tool-name.rb
   ```

2. **Follow the Homebrew formula structure**:
   ```ruby
   class YourToolName < Formula
     desc "Brief description of your tool"
     homepage "https://github.com/your-org/your-repo"
     version "1.0.0"
     
     on_macos do
       if Hardware::CPU.arm?
         url "https://github.com/your-org/your-repo/releases/download/v1.0.0/your-tool-macos-arm64.zip"
         sha256 "ACTUAL_SHA256_HASH"
       else
         url "https://github.com/your-org/your-repo/releases/download/v1.0.0/your-tool-macos-x64.zip"
         sha256 "ACTUAL_SHA256_HASH"
       end
     end
     
     def install
       bin.install "your-tool-binary"
     end
     
     test do
       system "#{bin}/your-tool-binary", "--help"
     end
   end
   ```

3. **Calculate SHA256 hashes** for your release files:
   ```bash
   shasum -a 256 your-tool-macos-arm64.zip
   shasum -a 256 your-tool-macos-x64.zip
   ```

4. **Test your formula locally**:
   ```bash
   brew install --build-from-source ./Formula/your-tool-name.rb
   ```

### Updating Existing Formulas

1. **Update version numbers** and download URLs
2. **Recalculate SHA256 hashes** for new releases
3. **Test the updated formula** before submitting

### Submitting Changes

1. Fork this repository
2. Create a feature branch: `git checkout -b add-new-tool`
3. Make your changes and test them
4. Commit with a descriptive message: `git commit -m "Add new tool formula"`
5. Push to your fork and submit a pull request

### Requirements

- All tools must support both ARM64 (Apple Silicon) and x64 (Intel) Macs
- Include proper test commands in formulas
- Provide clear descriptions and homepages
- Ensure binaries are properly installed to the `bin` directory

## 📝 License

This project is part of the Yoto platform infrastructure.
