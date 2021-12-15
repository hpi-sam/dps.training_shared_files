![CI](https://github.com/hpi-sam/BPMANV-App-SharedFiles/workflows/Continuous%20Integration/badge.svg)

# Digital MCI Simulation - Shared Files

This repository contains Widgets, data models, API-Routes and utility functions for both the [trainer](https://github.com/hpi-sam/BPMANV-App-Trainer) and the [helper](https://github.com/hpi-sam/BPMANV-App) app of our digital MCI simulation.

## Project repositories
This digital MCI simulation is distributed over several repositories. They are:
- [BPMANV](https://github.com/hpi-sam/BPMANV): Documentation of processes, decisions, documents and protocols that concern both Front- and Backend.
- [BPMANV-Server](https://github.com/hpi-sam/BPMANV-Server): The backend of the MCI simulation, written in Python with the Django Framework.
- [BPMANV-App](https://github.com/hpi-sam/BPMANV-App): The Frontend of the MCI simulation for helpers, written in Dart with the Flutter Framework.
- [BPMANV-App-Trainer](https://github.com/hpi-sam/BPMANV-App-Trainer): The Frontend of the MCI simulation for trainers, written in Dart with the Flutter Framework.
- [BPMANV-App-SharedFiles](https://github.com/hpi-sam/BPMANV-App-SharedFiles): Shared Widgets, data models and functions that both the trainer and the helper app use.

## Usage

You can use this package by referencing it in the pubspec.yaml of your App, e.g.:
```
  dps_training.shared_files_widgets: 
    git:  
      url: git@github.com:hpi-sam/BPMANV-App-Widgets.git
```

Currently all contributers have to be set as collaborators for this repository. Furthermore, to access the private repository, you'll need to add a ssh key to your github and provide the keys locally in your root directory in a .ssh folder. Now, Android Studio will be able to fetch this package. When making changes to this repository, make sure to run flutter pub upgrade in your app to fetch newest package version. 


## Developing this package

This package is developed in flutter. For setup, we recommend following these instructions: https://flutter.dev/docs/get-started/install.
We recommend using Android Studio as your IDE.

This package is developed on the flutter stable channel (default channel). To switch channels please refer to: https://flutter.dev/docs/development/tools/sdk/upgrading


---

## Design and architectural decisions

An overview of the important decisions we made during development can be found in the [wiki](https://github.com/hpi-sam/BPMANV-App/wiki). If you want to start contributing to this project, we strongly recommend getting familiar with [Cubit](https://github.com/hpi-sam/BPMANV-App/wiki/State-management-with-Cubit) for state management. 

### Pre-Commit Hook

We use a pre-commit git hook to automatically format our code with dartfmt on every commit. You need to configure this hook locally to make it work. [See this wiki page for how to do so (and more information)](https://github.com/hpi-sam/BPMANV-App/wiki/Git-Hooks).

### Use of Github Actions

We currently use Github Actions to analyze & build the project on every commit. Please make sure to run `Flutter analyze` locally before commiting to make sure that our CI stays happy :-)

