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
3) Launch command:
```
flutter pub get
```

You are ready to go!