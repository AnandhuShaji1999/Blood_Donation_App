// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB-yHfe2nLLcWh2rR0WbawRx-JgNxV78Gw',
    appId: '1:753588268411:web:242727adf3cdc2650221de',
    messagingSenderId: '753588268411',
    projectId: 'bloodapp-e4e9f',
    authDomain: 'bloodapp-e4e9f.firebaseapp.com',
    storageBucket: 'bloodapp-e4e9f.appspot.com',
    measurementId: 'G-Y4DJHSF0W6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBxmTOBvBZGGd_gP8d2YURznqzYCVLEyhA',
    appId: '1:753588268411:android:39c2a369801c33070221de',
    messagingSenderId: '753588268411',
    projectId: 'bloodapp-e4e9f',
    storageBucket: 'bloodapp-e4e9f.appspot.com',
  );
}
