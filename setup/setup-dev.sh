#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

echo "========================================"
echo " Comet Carpool Development Setup - macOS"
echo "========================================"
echo ""

# --------------------------------------------------
# Homebrew
# --------------------------------------------------
if ! command -v brew >/dev/null 2>&1; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    if [[ -x "/opt/homebrew/bin/brew" ]]; then
        eval "$(/opt/homebrew/bin/brew shellenv)"
    elif [[ -x "/usr/local/bin/brew" ]]; then
        eval "$(/usr/local/bin/brew shellenv)"
    fi
else
    echo "Homebrew is already installed."
fi

echo ""

# --------------------------------------------------
# System tools
# --------------------------------------------------
echo "Installing required system tools..."

brew install git
brew install openjdk@21
brew install maven
brew install node
brew install postgresql@16
brew install --cask postman || true

echo ""

# --------------------------------------------------
# Java PATH
# --------------------------------------------------
JAVA_PREFIX="$(brew --prefix openjdk@21)"
SHELL_CONFIG="$HOME/.zshrc"

if ! grep -q 'openjdk@21/bin' "$SHELL_CONFIG" 2>/dev/null; then
    echo "" >> "$SHELL_CONFIG"
    echo '# Comet Carpool - Java 21' >> "$SHELL_CONFIG"
    echo "export PATH=\"$JAVA_PREFIX/bin:\$PATH\"" >> "$SHELL_CONFIG"
    echo "Added Java 21 to $SHELL_CONFIG"
fi

export PATH="$JAVA_PREFIX/bin:$PATH"

echo ""

# --------------------------------------------------
# PostgreSQL
# --------------------------------------------------
echo "Starting PostgreSQL 16..."
brew services start postgresql@16 || true

echo ""

# --------------------------------------------------
# Frontend project dependencies
# --------------------------------------------------
FRONTEND_DIR="$REPO_ROOT/src/frontend"

if [ -f "$FRONTEND_DIR/package.json" ]; then
    echo "Frontend project detected."
    echo "Installing dependencies from package.json..."
    cd "$FRONTEND_DIR"
    npm install
else
    echo "No frontend package.json found."
    echo "Skipping frontend project dependencies."
fi

echo ""

# --------------------------------------------------
# Backend project dependencies
# --------------------------------------------------
BACKEND_DIR="$REPO_ROOT/src/backend"

if [ -f "$BACKEND_DIR/pom.xml" ]; then
    echo "Backend project detected."
    echo "Downloading Maven dependencies from pom.xml..."
    cd "$BACKEND_DIR"
    mvn dependency:go-offline
else
    echo "No backend pom.xml found."
    echo "Skipping backend project dependencies."
fi

cd "$REPO_ROOT"

echo ""
echo "========================================"
echo " Installed Tool Versions"
echo "========================================"

echo ""
git --version || true
java -version || true
mvn -version || true
node --version || true
npm --version || true
"$(brew --prefix postgresql@16)/bin/psql" --version || true

echo ""
echo "========================================"
echo " Setup Complete"
echo "========================================"
echo ""
echo "Installed:"
echo " - Git"
echo " - Java 21"
echo " - Maven"
echo " - Node.js / npm"
echo " - PostgreSQL 16"
echo " - Postman"
echo ""
echo "Project dependencies are installed automatically"
echo "when src/frontend/package.json and src/backend/pom.xml exist."
echo ""
echo "Docker, Docker Compose, and PostGIS are NOT installed."
