# Repository Guidelines

## Project Structure & Module Organization

This is a Flutter application named `kalu_app`. Primary Dart code lives in `lib/`, with the app entry point at `lib/main.dart`. Widget tests live in `test/`, currently starting with `test/widget_test.dart`. Platform-specific runner code is kept in `android/`, `ios/`, `macos/`, `linux/`, `windows/`, and web assets are in `web/`. Generated outputs under `build/` and Flutter ephemeral files should not be edited by hand.

## Build, Test, and Development Commands

Run `flutter pub get` after changing `pubspec.yaml` to install dependencies. Use `flutter run` to launch the app on an attached device, emulator, browser, or desktop target. Run `flutter analyze` to apply the analyzer rules configured in `analysis_options.yaml`. Use `flutter test` to run all tests under `test/`. Build release artifacts with target-specific commands such as `flutter build apk`, `flutter build web`, or `flutter build windows`.

## Coding Style & Naming Conventions

Follow the Flutter lint rules from `package:flutter_lints/flutter.yaml`. Format Dart code with `dart format .` before committing. Use two-space indentation for Dart and YAML. Name Dart files in `snake_case.dart`, classes and widgets in `UpperCamelCase`, and private members with a leading underscore, such as `_counter` or `_MyHomePageState`. Prefer `const` constructors and immutable widget fields where possible.

## Testing Guidelines

Use `flutter_test` for widget and unit tests. Place tests in `test/` and name files with the `_test.dart` suffix. Keep widget tests focused on visible behavior and interactions, for example pumping `MyApp`, tapping controls, and asserting rendered text or widgets. Add or update tests when changing app behavior, navigation, state handling, or UI contracts. Run `flutter test` and `flutter analyze` before opening a pull request.

## Commit & Pull Request Guidelines

No local Git history was available from this working directory during guide creation, so use clear, imperative commit messages such as `Add counter widget test` or `Update Android app icon`. Pull requests should describe the change, list verification commands run, and link related issues when applicable. Include screenshots or screen recordings for visible UI changes across relevant platforms.

## Security & Configuration Tips

Keep machine-specific settings such as SDK paths in local configuration files. Do not commit secrets, signing keys, API tokens, or generated credentials. Review platform manifests and entitlements carefully when adding permissions.
