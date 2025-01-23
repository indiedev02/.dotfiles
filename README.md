# Dotfiles Setup

Welcome to my dotfiles repository! This guide will walk you through the steps to set up your environment using the tools and configurations provided here.

## Prerequisites

Before proceeding, ensure that you are on a system where you have access to a terminal with sudo privileges. The setup is designed for macOS or Linux-based systems.

## Installation Steps

### 1. Install Zsh
Zsh (Z Shell) is required to use these dotfiles.

```bash
# Install Zsh
sudo apt update && sudo apt install -y zsh # For Debian/Ubuntu-based systems
# OR
sudo yum install -y zsh # For RHEL/CentOS-based systems
# OR
brew install zsh # For macOS with Homebrew

# Set Zsh as the default shell
chsh -s $(which zsh)
```

### 2. Install Oh My Zsh
Oh My Zsh is a delightful framework for managing your Zsh configuration.

```bash
# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 3. Install Homebrew
Homebrew is a package manager that simplifies the installation of tools and libraries.

#### For macOS:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#### For Linux:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Add Homebrew to your PATH
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zprofile
source ~/.zprofile
```

### 4. Install Stow
GNU Stow is used to manage dotfile symlinks.

```bash
brew install stow # If using Homebrew
# OR
sudo apt install -y stow # For Debian/Ubuntu-based systems
# OR
sudo yum install -y stow # For RHEL/CentOS-based systems
```

### 5. Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/SharK-020/.dotfiles.git
cd ~/.dotfiles
```

### 6. Use Stow to Manage Dotfiles

Navigate to the directory containing the dotfiles you want to symlink and use Stow:

```bash
# Example: Symlink Zsh configuration files
stow zsh

# Example: Symlink all configurations
stow */
```

This will create symlinks from the dotfiles repository to your home directory.

## Customization

Feel free to modify the files in this repository to suit your personal preferences. Any changes you make here can be version-controlled and easily propagated to other systems.

## Troubleshooting

- Ensure all dependencies are installed properly.
- Double-check the symlinks created by Stow to confirm they point to the correct files.
- If something goes wrong, feel free to roll back by running:

```bash
stow -D <package-name>
```

## License

This repository is licensed under the MIT License. See `LICENSE` for more details.

---

Happy hacking!

