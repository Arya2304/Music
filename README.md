# Music

This project is a Flutter mobile application focused on browsing music artists and albums. It starts with a splash screen that displays a "Starting In 3 seconds" message, then navigates to the main Home screen.

The Home screen features a black-themed interface with a blue AppBar titled "Music Artist" and includes a profile icon leading to a user profile page. It has a navigation drawer with options such as Library, Settings, Create Playlist, Updates, and Password Management.

The main content of the Home screen is divided into sections:

-Female Artists: A horizontally scrollable list of female music artists represented by circular avatars with images and names. Tapping an artist navigates to a detailed page about that artist.
-Popular Albums: A horizontally scrollable list of popular album covers. Tapping an album navigates to its detail page.
-Famous Group Artists: A vertically scrollable list of famous music groups with images, each leading to their respective detail pages.

The app is designed to showcase various music artists and albums, allowing users to explore and view details about them. The presence of many Dart files named after artists suggests that each artist or album has a dedicated screen or component.
# How to run the project 
To run this Flutter project, you need to have the following installed on your system:

-Flutter SDK (which includes Dart SDK) - Follow the official installation guide at https://flutter.dev/docs/get-started/install
-An IDE such as Visual Studio Code or Android Studio with Flutter and Dart plugins installed.
-Set up an Android or iOS emulator, or connect a physical device for testing.
-Once the environment is set up, follow these steps to run the project:

-Open a terminal in the project root directory (where pubspec.yaml is located).
-Run flutter pub get to install the project dependencies. This project uses the just_audio package for audio playback.
-Run flutter run to build and launch the app on the connected device or emulator.
-The project includes assets such as audio files and images located in the assets/audio/ and assets/images/ directories, which are configured in the pubspec.yaml.

This will start the app, which shows a splash screen and then navigates to the main Home screen where you can browse music artists and albums.

If you want to run the app on a specific platform, you can use platform-specific commands like flutter run -d chrome for web or flutter run -d android for Android devices.

Make sure your device or emulator is running before executing the run command.

-flutter pub get && flutter run

Overall, this is a music artist and album browsing Flutter app with a clean UI, navigation, and user profile features.
