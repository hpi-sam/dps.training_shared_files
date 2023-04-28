# dps.training_shared_files

This repository contains Widgets, data models, API-Routes and utility functions for both the Trainer-App and the Helper-App of our digital MCI simulation.

## Usage

You can use this package by referencing it in the pubspec.yaml of your app in the `pubspec.yaml` file, e. g.:
```yaml
dependencies:
  dps.training_shared_files:
    path: 'path/to/this/package'
```

## Developing this package

This package is developed in flutter. For setup, we recommend following these instructions: https://flutter.dev/docs/get-started/install.

## Design and architectural decisions

If you want to start contributing to this project, we strongly recommend getting familiar with [Cubit](https://pub.dev/documentation/flutter_cubit/latest/) for state management. 

### Use of Github Actions

We currently use Github Actions to analyze & build the project. Please make sure to run `flutter analyze` locally before committing to make sure that our CI stays happy :-)

