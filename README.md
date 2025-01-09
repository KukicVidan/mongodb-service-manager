

# MongoDB PowerShell Service Manager

This repository contains a PowerShell script that allows you to easily manage the MongoDB service on Windows. The script provides commands to **start**, **stop**, **restart**, and **check the status** of MongoDB. Additionally, it displays MongoDB service details such as uptime, CPU usage, and memory usage. You can also enhance the user experience by using Nerd Fonts for custom icons.

## Prerequisites

Before using the script, ensure that you have the following:

- PowerShell 7+ (or the latest version of PowerShell for Windows).
- Administrator privileges for controlling services on the system.
- Nerd Fonts (optional, for visual enhancements such as custom icons for service status).

## Features

- **Start MongoDB**: Start the MongoDB service.
- **Stop MongoDB**: Stop the MongoDB service.
- **Restart MongoDB**: Restart the MongoDB service.
- **Status**: Check the current status of MongoDB, including detailed process information like uptime, CPU usage, and memory usage.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
  - [Start MongoDB](#start-mongodb)
  - [Stop MongoDB](#stop-mongodb)
  - [Restart MongoDB](#restart-mongodb)
  - [Check Status](#check-status)
- [Download and Implement](#download-and-implement)
  - [Method 1: Manual Use](#method-1-manual-use-run-the-script-directly)
  - [Method 2: Add to $PROFILE for Immediate Access](#method-2-add-to-profile-for-immediate-access)
- [Linux Part](#linux-part)
  - [Linux Aliases](#linux-aliases)
- [Troubleshooting](#troubleshooting)
- [License](#license)

## Installation

There are several ways to download and implement this PowerShell script. Choose the method that suits you best:

### Method 1: Download ZIP

1. Go to the [GitHub repository](https://github.com/yourusername/mongodb-service-manager).
2. Click the green **Code** button.
3. Select **Download ZIP**.
4. Unzip the file to a directory of your choice.

### Method 2: Clone Repository (For Users with Git)

If you are familiar with Git, you can clone the repository directly to your local machine:

```bash
git clone https://github.com/yourusername/mongodb-service-manager.git
```

## Usage

Once you have downloaded or cloned the repository, you can use the PowerShell script to manage your MongoDB service. The script includes the following commands:

### Start MongoDB

To start the MongoDB service, use the following command:

```powershell
mongodb start
```

### Stop MongoDB

To stop the MongoDB service, use the following command:

```powershell
mongodb stop
```

### Restart MongoDB

To restart the MongoDB service, use the following command:

```powershell
mongodb restart
```

### Check Status

To check the current status of MongoDB, including uptime, CPU usage, and memory usage, use the following command:

```powershell
mongodb status
```

**Example Output**:

```powershell
MongoDB Service Status: Running
MongoDB Process Details:
  - Uptime: 01/09/2025 02:33:26
  - CPU Usage: 0%
  - Memory Usage: 344.54 MB
```

## Download and Implement

Once you have downloaded the script, follow these steps to implement it for use in PowerShell.

### Method 1: Manual Use (Run the Script Directly)

1. Navigate to the folder where you downloaded or cloned the script.
2. Open PowerShell in that directory and run the script by sourcing it:

```powershell
.\mongodb-service.ps1
```

### Method 2: Add to $PROFILE for Immediate Access

To have access to the MongoDB management functions directly from any PowerShell session, you can add the script to your PowerShell `$PROFILE`.

1. Edit your PowerShell `$PROFILE` file by running:

```powershell
notepad $PROFILE
```

2. Add the following line to the `$PROFILE` file to load the script automatically on startup:

```powershell
. "C:\path\to\mongodb-service.ps1"
```

> Replace `C:\path\to\mongodb-service.ps1` with the actual path where your script is saved.

3. Save and close the `$PROFILE` file.

Now, when you open a new PowerShell session, the MongoDB management functions will be available for immediate use!

## Linux Part

If you're also working with Linux, I've created a simple set of aliases to manage MongoDB services.

### Linux Aliases

Below are some useful aliases for managing MongoDB on Linux:

```bash
# Alias to start MongoDB service
alias start-mongo='sudo systemctl start mongodb'

# Alias to stop MongoDB service
alias stop-mongo='sudo systemctl stop mongodb'

# Alias to restart MongoDB service
alias restart-mongo='sudo systemctl restart mongodb'

# Alias to check MongoDB status
alias status-mongo='systemctl status mongodb'
```

You can add these aliases to your `~/.bashrc` or `~/.zshrc` file to use them directly from the terminal.

## Troubleshooting

If you encounter any issues, here are a few common solutions:

### MongoDB Service Not Found

Ensure MongoDB is installed and the service is correctly registered. You can check if the MongoDB service exists with:

```powershell
Get-Service -Name MongoDB
```

### Running the Script as Administrator

Some commands may require administrative privileges. Ensure that you run PowerShell as Administrator.

### Nerd Fonts Not Displaying Icons

Ensure that you have Nerd Fonts installed and the correct terminal profile (e.g., Windows Terminal, PowerShell) configured to display those icons.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.



---

