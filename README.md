````markdown
# Quick Tile App

This Flutter Federated Plugin demonstrates how to use a Quick Settings Tile on Android to toggle the camera flash on and off..

## Features

- Adds a Quick Settings Tile on Android
- Toggles camera flash using the tile
- Displays developer credit in the app UI

## Getting Started

### Prerequisites

- Flutter SDK
- Android device (API 24+ for Quick Settings Tiles)
- Android Studio / VS Code

### Installation

Clone the repository:

```bash
git clone https://github.com/yourusername/hello_quick_tile.git
cd hello_quick_tile
````

Get the dependencies:

```bash
flutter pub get
```

Run the example app:

```bash
flutter run
```

## Quick Settings Tile

This app uses Android's [TileService](https://developer.android.com/reference/android/service/quicksettings/TileService) to control the camera flash.

To add the tile:

1. Swipe down the Quick Settings panel
2. Tap the "Edit" button
3. Drag the **Hello Quick Tile** into the active tiles
4. Tap the tile to toggle the flashlight

## Android Permissions

The app requests the following permissions:

```xml
<uses-permission android:name="android.permission.CAMERA" />
```

The `TileService` is registered in `AndroidManifest.xml`:

```xml
<service
    android:name=".MyTileService"
    android:label="Hello Quick Tile"
    android:permission="android.permission.BIND_QUICK_SETTINGS_TILE">
    <intent-filter>
        <action android:name="android.service.quicksettings.action.QS_TILE" />
    </intent-filter>
</service>
```

## Developer Info

```
Developed by: Muhammad Tahir  
Roll No: K214503
```
