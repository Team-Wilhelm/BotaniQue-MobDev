# botanique

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

```bash
dart run build_runner build
```

```bash
dart run vector_graphics_compiler -i assets/foo.svg -o assets/foo.svg.vec
```

## To generate app icon 
```bash
flutter pub run flutter_launcher_icons
```

## To run app in production mode (connect to deployed BE)
```bash
flutter run --dart-define=CI=true
```

### To run the app locally on chrome (to ensure that pictures can be loaded)
1- Go to flutter\bin\cache and remove a file named: flutter_tools.stamp

2- Go to flutter\packages\flutter_tools\lib\src\web and open the file chrome.dart.

3- Find '--disable-extensions'

4- Add '--disable-web-security'