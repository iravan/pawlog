# App Icon Setup Guide

## How to Set Your App Icon

1. **Prepare Your Icon Image:**
   - Create a square PNG image (recommended: 1024x1024 pixels)
   - Save it as `app_icon.png` in this directory (`assets/icon/app_icon.png`)
   - For best results:
     - Use a square image (1:1 aspect ratio)
     - Minimum size: 1024x1024 pixels
     - No transparency (iOS doesn't support transparent icons)
     - Simple, recognizable design that works at small sizes

2. **Generate the Icons:**
   After placing your `app_icon.png` file in this directory, run:
   ```bash
   flutter pub get
   flutter pub run flutter_launcher_icons:main
   ```

3. **Verify:**
   - The icons will be automatically generated for both Android and iOS
   - Android icons will be placed in: `android/app/src/main/res/mipmap-*/`
   - iOS icons will be placed in: `ios/Runner/Assets.xcassets/AppIcon.appiconset/`

4. **Rebuild Your App:**
   ```bash
   flutter clean
   flutter run
   ```

## Optional: Android Adaptive Icons

If you want to use Android adaptive icons (which can have different foreground and background), you can:

1. Create two images:
   - `app_icon.png` - The foreground icon (should be centered, with padding)
   - `background.png` - The background color/image

2. Update `pubspec.yaml`:
   ```yaml
   flutter_launcher_icons:
     android: true
     ios: true
     image_path: "assets/icon/app_icon.png"
     adaptive_icon_background: "#FFFFFF"  # Or path to background image
     adaptive_icon_foreground: "assets/icon/app_icon.png"
   ```

## Tips

- Test your icon at different sizes to ensure it's readable
- Keep the design simple and avoid fine details
- Use high contrast colors for better visibility
- Consider how the icon looks on both light and dark backgrounds (for Android)

