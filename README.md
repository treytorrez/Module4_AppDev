 # Overview

As a software engineer, I am focused on expanding my mobile development skills by building well-structured and interactive applications. This project is an exercise in creating a user-friendly interface, managing application state, and organizing code effectively in a Flutter environment.

This application is a simple calendar utility. It displays a scrollable list of months, allowing users to view dates. When a user taps on a specific day, a modal sheet appears at the bottom of the screen, showing the selected date (month, day, and year) and a "Close" button to dismiss the modal. The calendar view scrolls infinitely through past and future years.

The purpose of creating this app is to practice building UIs with Flutter, understand widget composition, manage state within a widget tree, and implement navigation features like modal bottom sheets. It also serves as a foundation for learning how to integrate local data persistence.

[Software Demo Video](http://youtube.link.goes.here)

# Development Environment

The application was developed using Android Studio as the primary Integrated Development Environment (IDE). Version control was managed using Git.

The primary programming language used is Dart, in conjunction with the Flutter framework for building the cross-platform user interface. Key Flutter libraries and concepts utilized include:
*   `material.dart`: For Material Design widgets and theming.
*   `Widgets`: `StatelessWidget`, `Scaffold`, `AppBar`, `ListView.builder`, `GridView.builder`, `Column`, `Text`, `TextButton`, `SizedBox`, `showModalBottomSheet`.
*   `Enums`: For representing months in a type-safe way.

# Useful Websites

*   [Flutter Documentation](https://docs.flutter.dev/)
*   [Dart Documentation](https://dart.dev/guides)

# Future Work

*   Integrate a local database (e.g., Hive) to allow users to create, view, and manage events on specific dates.
*   Enhance the UI to visually indicate days that have events.
*   Add functionality to edit and delete existing events.
*   Align Dates with corresponding day of the week
