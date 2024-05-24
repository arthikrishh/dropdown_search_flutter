# Flutter Dropdown Search Example

This Flutter application demonstrates the use of a searchable dropdown using the `dropdown_textfield` package. The app showcases how to implement a custom dropdown field with search functionality, styled using the `google_fonts` package.

<img width="1099" alt="Screenshot 2024-01-28 at 6 38 58 PM" src="https://github.com/arthikrishh/dropdown_search_flutter/assets/116914004/5c6ee56e-80e7-44a2-ac97-d295a3b871ff">

## Features

- Searchable dropdown menu
- Custom styling using Google Fonts
- Gradient-styled AppBar and Dropdown container
- Image asset included in the layout

## Getting Started

To get started with this project, follow these steps:

### Prerequisites

- Flutter installed on your local machine. If not, follow the instructions on the official [Flutter website](https://flutter.dev/docs/get-started/install).

### Installation

1. Clone the repository:

```sh
git clone https://github.com/your_username/flutter-dropdown-example.git
```

2. Navigate to the project directory:

```sh
cd flutter-dropdown-example

```

3. Install the dependencies:

```sh
flutter pub get
```

### Running the App

To run the app on an emulator or a physical device, use the following command:

```sh
flutter run
```

### Code Overview

## Main Entry Point

The entry point for the application is in the main.dart file. The MyApp widget sets up the application theme and loads the DropDownButton widget as the home screen.

```dart
void main() {
  runApp(const MyApp());
}
```

### DropDownButton Widget

The DropDownButton widget is a stateful widget that contains the layout for the dropdown and other UI elements. It includes an AppBar with a gradient background, an image asset, and a styled DropDownTextField.

```dart
class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}
```

### Dependencies

# This project uses the following dependencies:

dropdown_textfield: For creating a searchable dropdown field.
google_fonts: For applying custom fonts.
Make sure to add these dependencies to your pubspec.yaml file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  dropdown_textfield: ^1.0.0
  google_fonts: ^2.1.0
```

### Assets

The project includes an image asset (flutter.png) located in the assets/images directory. Make sure to update your pubspec.yaml file to include this asset:

```yaml
flutter:
  assets:
    - assets/images/flutter.png
```

### Acknowledgements

   * [dropdown_textfield package](https://pub.dev/packages/dropdown_textfield)

   * [Google Fonts package](https://pub.dev/packages/google_fonts)

### Output Video

https://github.com/arthikrishh/dropdown_search_flutter/assets/116914004/badac1d8-f422-4967-832d-c1e6702830db

For More You can visit my website [Aarthi Krishnan](https://aarthikrishnan.com)

