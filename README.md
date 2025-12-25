# ✨ TextSurface

A lightweight and customizable **Flutter Text animation library** that provides
multiple **GIF-style animated text effects** such as slide, scale, bounce, and wave.

Designed with **clean structure** and **future extensibility** in mind.

---

## 🚀 Features

✅ Clean & reusable **TextSurface widget**  
✅ Multiple built-in **text animations**  
✅ GIF-style **looping effects**  
✅ Easy to extend with new effects  
✅ No external animation dependency  

---

## 📸 Preview
![text_surface](https://github.com/user-attachments/assets/beca8da7-1bef-4ec4-a55d-f9042c774862)



---

## 🎞️ Available Animations

```dart
enum TextSurfaceAnimation {
  slideFade,
  scaleColor,
  bounce,
  wave,
}
```

| Animation    | Description                    |
| ------------ | ------------------------------ |
| `slideFade`  | Slide + fade looping animation |
| `scaleColor` | Scale with color transition    |
| `bounce`     | Vertical bounce effect         |
| `wave`       | Character-wise wave animation  |

---

## 📦 Installation
### Add dependency in pubspec.yaml:
```
dependencies:
  text_surface:
    path:
      url: '.../flutter_text_surface/text_surface' ## your path
```
### Using GitHub (recommended during development):
```
dependencies:
  text_surface:
    git:
      url: https://github.com/YOUR_USERNAME/flutter_text_surface.git
```
### 📥 Import
```dart
import 'package:text_surface/text_surface.dart';
```

---

## 🧩 Basic Usage
```dart
TextSurface(
  text: "Your Text",
);
```

```dart
AnimatedTextSurface(
  text: "SLIDE & FADE",
  animation: TextSurfaceAnimation.slideFade,
);
```

---

## 🧱 Project Structure
```css
lib/
├── core/
│   ├── constants/
│   │   ├── app_colors.dart
│   │   └── app_spacing.dart
│   ├── theme/
│   │   └── app_text_styles.dart
│   └── utils/
│       └── text_utils.dart
│
├── widgets/
│   └── text_surface/
│       ├── effects/
│       │   ├── bounce_effect.dart
│       │   ├── scale_color_effect.dart
│       │   ├── slide_fade_effect.dart
│       │   └── wave_effect.dart
│       │
│       ├── animated_text_surface.dart
│       ├── text_surface.dart
│       ├── text_surface_animation.dart
│       └── text_surface_style.dart
│
└── text_surface.dart
```

---

## 📄 License
```text
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.

```
