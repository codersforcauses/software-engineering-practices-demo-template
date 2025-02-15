#!/bin/bash

set -euxo pipefail

# Purpose: This script will read the `issues` directory and for every markdown file create the ticket
# the title of the markdown file will be the title of the ticket
# eg. "complete-the-addition-function.md"  will create a ticket with the title "complete the addition function"
# The body of the ticket will be the content of the markdown file


# Check if gh is installed
if ! command -v gh &> /dev/null
then
    # Check if brew is installed
    if ! command -v brew &> /dev/null
    then
        echo "brew could not be found... Installing brew"
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    echo "gh could not be found... Installing gh"
    brew install gh
fi

# Make sure gh is setup
# gh auth status returns 0 if the user is logged in and 1 if the user is not logged in
if ! gh auth status; then
    echo "Please login to GitHub using gh auth login"
    gh auth login -p ssh -w
fi

# Loop through all the files in the issues directory
for file in issues/*.md; do
    # Get the title of the ticket
    title=$(basename $file .md | sed 's/-/ /g')
    # Get the body of the ticket
    body=$(cat $file)
    # Create the ticket
    gh issue create --title "$title" --body "$body"
done