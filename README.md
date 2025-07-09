# Flutter FAQ Application

A modern, responsive FAQ (Frequently Asked Questions) application built with Flutter. This application demonstrates the use of ExpansionPanelList to create an interactive FAQ section with smooth animations and a clean user interface.

## Features

- **Interactive FAQ List**: Expandable/collapsible panels for questions and answers
- **Modern UI**: Built with Material 3 design system
- **Responsive Design**: Works on all screen sizes
- **Smooth Animations**: Delightful transitions when expanding/collapsing items
- **Contact Support**: Built-in support section for additional help

## Screenshots

<!-- Add screenshots of your app here -->
<!-- ![FAQ Screen](screenshots/faq_screen.png) -->

## Getting Started

### Prerequisites

- Flutter SDK (latest stable version)
- Android Studio / VS Code with Flutter extensions
- Xcode (for iOS development)

### Installation

1. Clone the repository:
   ```bash
   git clone <https://github.com/Makito042/classpresent.git>
   cd classpresent
   ```

2. Get dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

## Usage

1. The app will display a list of frequently asked questions
2. Tap on any question to expand it and view the answer
3. Tap again to collapse the answer
4. Use the "Contact Support" button at the bottom for additional assistance

## Customization

### Adding/Modifying FAQ Items

Edit the `_faqItems` list in `lib/main.dart` to add, remove, or modify FAQ items:

```dart
final List<FAQItem> _faqItems = [
  FAQItem(
    question: 'Your question here',
    answer: 'Your answer here',
  ),
  // Add more FAQ items as needed
];
```

### Theming

Customize the app's theme in `lib/main.dart` by modifying the `ThemeData`:

```dart
theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue, // Change this to your brand color
    brightness: Brightness.light,
  ),
  useMaterial3: true,
),
```

## Dependencies

- Flutter SDK (latest stable version)
- Material Design Icons (included with Flutter)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the [MIT License](LICENSE).

## Support

For support, please open an issue in the repository or contact the maintainers.
