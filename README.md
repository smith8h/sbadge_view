# SBadgeView

![Builds and tests](https://github.com/smith8h/sbadge_view/actions/workflows/build.yml/badge.svg)
[![pub package](https://img.shields.io/pub/v/sbadgeview.svg)](https://pub.dev/packages/sbadgeview)
[![pub points](https://img.shields.io/pub/points/sbadgeview?color=2E8B57&label=pub%20points)](https://pub.dev/packages/sbadgeview/score)
![Latest release](https://img.shields.io/github/v/release/smith8h/sbadge_view?include_prereleases&amp;label=latest%20release)
![Stable Version](https://img.shields.io/badge/stable_version-1.0.0-blue)
![Stability](https://img.shields.io/badge/stability-stable-green.svg)
![repo size](https://img.shields.io/github/repo-size/smith8h/sbadge_view)

A helpful dart package to show notifications count or anything important to know!

## Usage

To use this dependeny, add sbadgeview as a dependency in your pubspec.yaml file.

```yaml
dependencies:
  sbadgeview: ^1.0.0
```

## Example

Import the library.

```dart
import 'package:sbadgeview/sbadge_view.dart';
```

Use it anywhere you want to create a **SBadgeView**:

### Preview

![tele preview](https://te.legra.ph/file/de31b349017802095c8c7.jpg)

#### How to use

```dart
    SBadgeView(
      content: IconButton( // any widget
        child: Icon(Icons.shop), 
        onPressed: () {},
      ),
      badgeCount: 8,

      // optional attributes:
      badgeColor: Colors.black,
      badgeColorOpacity: 0.5,
      badgePadding = const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      badgeBorderRadius: 18,
    );
```
