<div>
  <h1 align="center">flager_ui</h1>
  <p align="center">
  Design beautiful apps using Flutter
  </p>
</div>

Unofficial implementation of UI for [Flutter](https://flutter.dev).

## Installation

Add the package to your dependencies:

```yaml
dependencies:
  flager_ui: ^0.0.1
```

OR:

```yaml
dependencies:
  flager_ui:
    git: https://github.com/pesaregorg/flager_ui.git
```

You can see the example app [here](https://github.com/pesaregorg/flager_ui/example)

Finally, run `dart pub get` to download the package.

Projects using this library should use the stable channel of Flutter

## Style

Using the `FlagerUi.themeData` widget

```dart
import 'package:flager_ui/flager_ui.dart';


MaterialApp(
  title: ...,

  theme: FlagerUi.themeData(),

  home: ...,
);
```