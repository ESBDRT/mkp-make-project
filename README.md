# MKP-Make-Project

MKP is a command line tool that allows you to create a project in two commands.<br><br>It creates the folder structure,
creates the base files for the specific language specified by the option, initializes a local git repository, links it to a remote one and makes the first commit/push.

# Getting Started

### Operating systems

MKP is available to use on Linux and MacOS.

## Dependencies

### Linux

Build essentials (git, make, gcc)

### MacOS

Xcode Command Line Tools (git, make, gcc)

## Installation

To install the command, run :
```
curl -fsSL https://raw.githubusercontent.com/ESBDRT/MKP-Make-project/main/install.sh | sudo bash
```

## Usage

To create a project use : 

```
mkp <option> <project-name>
```
The option parameter is mandatory, refer to the option table

To setup the remote repository use : 
*THE COMMAND MUST BE CALLED INSIDE YOUR PROJECT FOLDER*

```
mkp setrem <remote_repo_url>
```

### Options table

| Language        | Option           | Files/folders created  |
| :------------- |:-------------| :-----|
| C      | -c | Makefile<br>README.md<br>main.c<br>main.h<br>src/ |

More to come..

## Acknowledgments

README.md template by @DomPizzie
