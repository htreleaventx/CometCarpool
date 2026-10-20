# Comet Carpool Development Setup - Windows
# Run this script in PowerShell.

$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RepoRoot = Resolve-Path (Join-Path $ScriptDir "..")

Write-Host "========================================"
Write-Host " Comet Carpool Development Setup - Windows"
Write-Host "========================================"
Write-Host ""

function Test-Command {
    param([string]$Command)
    return [bool](Get-Command $Command -ErrorAction SilentlyContinue)
}

function Install-WingetPackage {
    param(
        [string]$Name,
        [string]$Id
    )

    Write-Host "Checking $Name..."

    $installed = winget list --id $Id --exact --accept-source-agreements 2>$null |
        Select-String -SimpleMatch $Id

    if ($installed) {
        Write-Host "$Name is already installed."
    }
    else {
        Write-Host "Installing $Name..."
        winget install --id $Id --exact `
            --accept-package-agreements `
            --accept-source-agreements
    }

    Write-Host ""
}

# --------------------------------------------------
# winget
# --------------------------------------------------
if (-not (Test-Command "winget")) {
    Write-Host "Windows Package Manager (winget) was not found."
    Write-Host "Install or update 'App Installer' from the Microsoft Store, then run this script again."
    exit 1
}

# --------------------------------------------------
# System tools
# --------------------------------------------------
Install-WingetPackage "Git" "Git.Git"
Install-WingetPackage "Java 21 (Temurin JDK)" "EclipseAdoptium.Temurin.21.JDK"
Install-WingetPackage "Apache Maven" "Apache.Maven"
Install-WingetPackage "Node.js LTS" "OpenJS.NodeJS.LTS"
Install-WingetPackage "PostgreSQL 16" "PostgreSQL.PostgreSQL.16"
Install-WingetPackage "Postman" "Postman.Postman"

Write-Host "System tools have been installed or verified."
Write-Host ""

# Refresh PATH for common machine/user environment changes.
$machinePath = [Environment]::GetEnvironmentVariable("Path", "Machine")
$userPath = [Environment]::GetEnvironmentVariable("Path", "User")
$env:Path = "$machinePath;$userPath"

# --------------------------------------------------
# Frontend project dependencies
# --------------------------------------------------
$FrontendDir = Join-Path $RepoRoot "src\frontend"
$PackageJson = Join-Path $FrontendDir "package.json"

if (Test-Path $PackageJson) {
    if (Test-Command "npm") {
        Write-Host "Frontend project detected."
        Write-Host "Installing dependencies from package.json..."
        Push-Location $FrontendDir
        npm install
        Pop-Location
    }
    else {
        Write-Host "Node/npm was installed, but this PowerShell session cannot see it yet."
        Write-Host "Restart PowerShell and run this script again to install frontend dependencies."
    }
}
else {
    Write-Host "No frontend package.json found."
    Write-Host "Skipping frontend project dependencies."
}

Write-Host ""

# --------------------------------------------------
# Backend project dependencies
# --------------------------------------------------
$BackendDir = Join-Path $RepoRoot "src\backend"
$PomFile = Join-Path $BackendDir "pom.xml"

if (Test-Path $PomFile) {
    if (Test-Command "mvn") {
        Write-Host "Backend project detected."
        Write-Host "Downloading Maven dependencies from pom.xml..."
        Push-Location $BackendDir
        mvn dependency:go-offline
        Pop-Location
    }
    else {
        Write-Host "Maven was installed, but this PowerShell session cannot see it yet."
        Write-Host "Restart PowerShell and run this script again to download backend dependencies."
    }
}
else {
    Write-Host "No backend pom.xml found."
    Write-Host "Skipping backend project dependencies."
}

Write-Host ""
Write-Host "========================================"
Write-Host " Installed Tool Versions"
Write-Host "========================================"
Write-Host ""

if (Test-Command "git")  { git --version }
if (Test-Command "java") { java -version }
if (Test-Command "mvn")  { mvn -version }
if (Test-Command "node") { node --version }
if (Test-Command "npm")  { npm --version }
if (Test-Command "psql") { psql --version }

Write-Host ""
Write-Host "========================================"
Write-Host " Setup Complete"
Write-Host "========================================"
Write-Host ""
Write-Host "Installed:"
Write-Host " - Git"
Write-Host " - Java 21"
Write-Host " - Maven"
Write-Host " - Node.js / npm"
Write-Host " - PostgreSQL 16"
Write-Host " - Postman"
Write-Host ""
Write-Host "Project dependencies are installed automatically"
Write-Host "when src/frontend/package.json and src/backend/pom.xml exist."
Write-Host ""
Write-Host "Docker, Docker Compose, and PostGIS are NOT installed."
Write-Host ""
Write-Host "NOTE: If a newly installed command is not recognized,"
Write-Host "restart PowerShell and run this script again."
