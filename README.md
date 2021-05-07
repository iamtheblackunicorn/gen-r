<p align="center">
 <img src="https://github.com/iamtheblackunicorn/gen-r/raw/main/assets/images/banner.png"/>
</p>

# gen-r :smiling_face_with_three_hearts:

*gen-r, generate a QR code from given string data!* :smiling_face_with_three_hearts:

## About :books:

I got a bit bored again so I decided to write a new Flutter app. You know those QR codes that people seem to have a lot of for no good reason? Yeah, those. I wondered whether I could write an app that would let me put in, say, the address of a website, and then, on the press of a button, spit out a QR code for me to screenshot or go absolutely bonkers with. *gen-r* is that app.


## Features :test_tube:

- Simple and easy-to-use interface!
- Simple application flow!
- Generates a QR code from text input!
- Open-source & MIT-licensed!
- Made with some unicorn dust.

## Download :inbox_tray:

- ***Generation Z*** (v.1.0.0):
  - ***[Download for Android](https://github.com/iamtheblackunicorn/gen-r/releases/download/v.1.0.0/gen-r-v1.0.0-GenZ-Release.apk) (17.4 MB)***

## Building :hammer:

Make sure that you have the following programmes installed:

- Flutter SDK
- Dart SDK
- Android Studio
- Android SDK
- Java JDK
- Xcode
- Make
- Git

After you have installed these, run this command to generate a keystore for the app.

```bash
$ keytool -genkey -v -keystore key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
```

After having done that, move the Java keystore to `android/app` and fill in the fields for the keystore password in the file `android/app/key.properties`.

Finally, run these commands:

```bash
$ flutter pub get
$ flutter build apk
```

You have now generated a release build of *gen-r*.

## Extending the supported languages :book:

*gen-r* is localized for German and English. To add a language, simply create a file called `app_languagecode.arb` in `lib/l10n` where `languagecode` represents the language code for the language you want to add. If it were Spanish for example, you would create a file called `app_es.arb`.
Copy and paste the contents from one of the other `*.arb` files and edit the strings accordingly.
Finally, add this line in the list `supportedLocales` in the file `lib/main.dart`.

```dart
const Locale('languagecode', ''),
```

`languagecode` represents the language you are translating for.

## Changelog :black_nib:

### Version 1.0.0: ***Generation Z***

- upload to GitHub
- initial release
- speed and elegance

## Note :scroll:

- *gen-r :smiling_face_with_three_hearts:* by Alexander Abraham :black_heart: a.k.a. *"The Black Unicorn" :unicorn:*
- Licensed under the MIT license.
