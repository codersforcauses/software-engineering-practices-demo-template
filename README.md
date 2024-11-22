# Software Engineering Practices Demo

This repository is about demonstrating the usual workflow of software engineers in the real-world.

There are usually a couple parts:

- Issues / tickets
- Kanban board (todo, in progress, review)
- Pull Requests
- Code Reviews

## Instructions

Do the following:

1. Look at the github issues
2. Assign yourself an issue
3. Create a branch with the following format `{Issue Number}-{Issue Name}`. `git checkout -b {Issue Number}-{Issue Name}`
4. Create the change to satisfy or complete the github issue
5. Commit (package) the change `git commit -m "{insert message here}"` and push `git push`.
6. Create a pull request and request for a reviewer from CFC peeps

## Create a new Python Virtual Environment

`python3 -m venv venv` to create a new python environment

To activate the virtual environment, run `source venv/bin/activate` or `venv/Scripts/activate`

To install packages, run `pip install -r requirements.txt`

To run tests, do `pytest .`

To run tests with coverage report `pytest --cov-report html --cov=.`
