#!/bin/bash

# 1. Git repository initialize karo (agar pehle se nahi hai toh)
if [ ! -d ".git" ]; then
    echo "🔄 Initializing Git repository..."
    git init
    git branch -M main
    # ⚠️ APNI GITHUB REPO KA LINK YAHAN BADLEIN:
    git remote add origin https://github.com/bishtprerna17-netizen/cicd-automation.git
fi

# 2. Saari files ko stage karo
echo "➕ Adding files to Git..."
git add .

# 3. Commit karo (Yeh aapse commit message puchega)
echo "✍️ first commit - sample cicd project:"
read commit_message

# Agar message khali chhoda toh default message set ho jayega
if [ -z "$first commit - sample cicd project" ]; then
    commit_message="automated backup/deploy"
fi

git commit -m "$first commit - sample cicd project"

# 4. GitHub par push karo
echo "🚀 Pushing code to GitHub main branch..."
git push -u origin main

echo "✅ Done! GitHub Actions tab check karo ab."
