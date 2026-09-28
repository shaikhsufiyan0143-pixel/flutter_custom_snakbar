# Flutter Custom Toast & SnackBar

A simple and customizable Flutter package for displaying custom **Toast** and **SnackBar** messages with icons, text, background colors, rounded corners, and customizable durations.

## Features

* Custom Toast messages
* Custom SnackBar messages
* Optional icons
* Custom background colors
* Custom text colors
* Custom border radius
* Custom display duration
* Simple API
* Lightweight and easy to use

## Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_custom_toast:
    git:
      url: https://github.com/<username>/flutter_custom_toast.git
```

Then run:

```bash
flutter pub get
```

## Import

```dart
import 'package:flutter_custom_toast/flutter_custom_toast.dart';
```

## Custom Toast

Display a basic Toast:

```dart
CustomToast.show(
  context: context,
  message: 'Operation completed',
);
```

### Toast with Icon

```dart
CustomToast.show(
  context: context,
  message: 'Successfully saved',
  icon: Icons.check,
  backgroundColor: Colors.green,
);
```

### Toast Customization

```dart
CustomToast.show(
  context: context,
  message: 'Something went wrong',
  icon: Icons.error,
  backgroundColor: Colors.red,
  textColor: Colors.white,
  borderRadius: 12,
  duration: const Duration(seconds: 3),
);
```

## Custom SnackBar

Display a basic SnackBar:

```dart
CustomSnackBar.show(
  context: context,
  message: 'Data saved successfully',
);
```

### SnackBar with Icon

```dart
CustomSnackBar.show(
  context: context,
  message: 'Successfully updated',
  icon: Icons.check,
  backgroundColor: Colors.green,
);
```

### SnackBar Customization

```dart
CustomSnackBar.show(
  context: context,
  message: 'Unable to complete the request',
  icon: Icons.error,
  backgroundColor: Colors.red,
  textColor: Colors.white,
  borderRadius: 12,
  duration: const Duration(seconds: 3),
);
```

## Parameters

### CustomToast

| Parameter         | Type           | Required | Default        |
| ----------------- | -------------- | -------- | -------------- |
| `context`         | `BuildContext` | Yes      | -              |
| `message`         | `String`       | Yes      | -              |
| `icon`            | `IconData?`    | No       | `null`         |
| `backgroundColor` | `Color`        | No       | `Colors.black` |
| `textColor`       | `Color`        | No       | `Colors.white` |
| `borderRadius`    | `double`       | No       | `10`           |
| `duration`        | `Duration`     | No       | `2 seconds`    |

### CustomSnackBar

| Parameter         | Type           | Required | Default        |
| ----------------- | -------------- | -------- | -------------- |
| `context`         | `BuildContext` | Yes      | -              |
| `message`         | `String`       | Yes      | -              |
| `icon`            | `IconData?`    | No       | `null`         |
| `backgroundColor` | `Color`        | No       | `Colors.black` |
| `textColor`       | `Color`        | No       | `Colors.white` |
| `borderRadius`    | `double`       | No       | `10`           |
| `duration`        | `Duration`     | No       | `2 seconds`    |

## Complete Example

```dart
import 'package:flutter/material.dart';
import 'package:flutter_custom_toast/flutter_custom_toast.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Toast & SnackBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                CustomToast.show(
                  context: context,
                  message: 'Success',
                  icon: Icons.check,
                  backgroundColor: Colors.green,
                );
              },
              child: const Text('Show Toast'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                CustomSnackBar.show(
                  context: context,
                  message: 'Information message',
                  icon: Icons.info,
                  backgroundColor: Colors.blue,
                );
              },
              child: const Text('Show SnackBar'),
            ),
          ],
        ),
      ),
    );
  }
}
```

## Package Structure

```text
flutter_custom_toast/
│
├── example/
├── lib/
│   ├── custom_snackbar.dart
│   ├── custom_toast.dart
│   └── flutter_custom_toast.dart
│
├── test/
├── CHANGELOG.md
├── LICENSE
├── README.md
└── pubspec.yaml
```

## Requirements

* Flutter
* Dart
* Material Design

## License

MIT License
 
Copyright (c) 2026 Excelsior Technologies
 
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
 
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
 
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE. 



After this, we should do **`flutter analyze` → test the example app → `git status` → first commit**.
