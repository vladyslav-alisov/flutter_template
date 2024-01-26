# Flutter template with Provider, GoRouter, Isar DB and Dio packages.

## To start

Clone this project

To change name of the project use [rename package](https://pub.dev/packages/rename)

1) Write in terminal:
```
dart pub global activate rename
rename setAppName --targets ios,android --value "YourAppName"
rename setBundleId --targets ios,android --value "com.newbundle.your"
```
2) Change "name" in pubspec.yaml and refactor "package:template/" to "package:new_name/" 
   name: new_name
   description: "Your description here"
3) Run command:
```
flutter pub get
```

You are ready to go!

# Icons

1) Put your image to "assets/images/your_logo_image.png"
2) In pubspec.yaml 
Replace "assets/images/logo.png" to "assets/images/your_logo_image.png"
```
flutter_icons:
  image_path: "assets/images/logo.png"
  android: "launcher_icon"
```
3) Run command:
```
flutter pub get
flutter pub run flutter_launcher_icons
```
