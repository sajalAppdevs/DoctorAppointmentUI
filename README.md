# Doctor Appointment UI

A modern and user-friendly Flutter application for managing doctor appointments. This UI project showcases a beautiful and intuitive interface for a medical appointment booking system.

## Features

- **Onboarding Experience**: Smooth onboarding flow with slider images
- **User Authentication**: Sign-in functionality for secure access
- **Home Dashboard**: 
  - Custom app bar with profile management
  - Banner widget for promotions
  - Medical categories including Dental, Heart, and Kidney specialties
  - Appointment card widget for managing bookings

## Screenshots

The application includes various UI elements and assets:

### Medical Categories
- Dental Services
- Heart Specialist
- Kidney Specialist

### Asset Integration
- Profile management
- Promotional banners
- Category icons
- Onboarding slider images

## Project Structure

```
lib/
├── Signin/
│   └── signin_page.dart
├── appBar/
│   └── customAppBar.dart
├── home/
│   ├── Appoinmnetcard_widget.dart
│   ├── banner_widget.dart
│   ├── categorie_widget.dart
│   ├── const_widget.dart
│   └── homePage.dart
├── onboarding/
│   ├── constant.dart
│   └── onboarding_page.dart
└── main.dart
```

## Getting Started

### Prerequisites

- Flutter SDK (latest version)
- Android Studio / VS Code
- Git

### Installation

1. Clone the repository:
   ```bash
   git clone [repository-url]
   ```

2. Navigate to project directory:
   ```bash
   cd DoctorAppointmentUI
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Run the app:
   ```bash
   flutter run
   ```

## Development Setup

### Android Studio
1. Open Android Studio
2. Select 'Open an existing project'
3. Navigate to the project directory and click 'Open'
4. Wait for project indexing and dependency resolution

### VS Code
1. Open VS Code
2. Install Flutter and Dart extensions
3. Open the project folder
4. Press F5 or select 'Run > Start Debugging'

## Resources

For help getting started with Flutter development:
- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
- [Online documentation](https://docs.flutter.dev/)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
