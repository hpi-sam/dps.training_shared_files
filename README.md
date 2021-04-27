# BPMANV-App-Widgets

This package provides Widgets for both the trainee and trainer App of the digital dPS.

Right now, the package provides the following widgets:

- PatientInformtationWidget consisting serveraly internal widgets

This package depends on the BPMANV-App-ApiService package (https://github.com/hpi-sam/BPMANV-App-ApiService).

# Usage

You can use this package by referencing it in the pubspec.yaml of your App, e.g.:
```
  bpmanv_app_widgets: 
    git:  
      url: git@github.com:hpi-sam/BPMANV-App-Widgets.git
```

Furthermore, to access the private repository, you'll need to add a ssh key to your github and provide the keys locally in your root directory in a .ssh folder. Now, Android Studio will be able to fetch this package. When making changes to this repository, make sure to run flutter pub upgrade in your app to fetch newest package version.

