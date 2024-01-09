// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDOESjKAcefgAQrBJHrC91ostmRmiU5Y-c',
    appId: '1:638728520100:web:9ef3f65304a133b4eec131',
    messagingSenderId: '638728520100',
    projectId: 'chat-flutter-app-28cd9',
    authDomain: 'chat-flutter-app-28cd9.firebaseapp.com',
    storageBucket: 'chat-flutter-app-28cd9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA6AD6kju5hEkIXh4OOO8SveXUdxyKH6lo',
    appId: '1:638728520100:android:96b4c2c70a79bc84eec131',
    messagingSenderId: '638728520100',
    projectId: 'chat-flutter-app-28cd9',
    storageBucket: 'chat-flutter-app-28cd9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAqmzvN_eTUCeV1wIcMERCYArTVLk1-fOs',
    appId: '1:638728520100:ios:ad9a225b4c6906cfeec131',
    messagingSenderId: '638728520100',
    projectId: 'chat-flutter-app-28cd9',
    storageBucket: 'chat-flutter-app-28cd9.appspot.com',
    iosBundleId: 'com.example.chatFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAqmzvN_eTUCeV1wIcMERCYArTVLk1-fOs',
    appId: '1:638728520100:ios:223b3cd835abb7b6eec131',
    messagingSenderId: '638728520100',
    projectId: 'chat-flutter-app-28cd9',
    storageBucket: 'chat-flutter-app-28cd9.appspot.com',
    iosBundleId: 'com.example.chatFirebase.RunnerTests',
  );
}
