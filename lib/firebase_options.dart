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
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBoYLXsCeWRQubhgvopa8uj6xzpGXrHMG8',
    appId: '1:299913310200:web:b23e4966ddb0bd106a700d',
    messagingSenderId: '299913310200',
    projectId: 'musika-player',
    authDomain: 'musika-player.firebaseapp.com',
    storageBucket: 'musika-player.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1K_AmL7-VNeFjYH0lbvM6CD4R5Ab2r8c',
    appId: '1:299913310200:android:89a63fbf6f9e532f6a700d',
    messagingSenderId: '299913310200',
    projectId: 'musika-player',
    storageBucket: 'musika-player.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDvpexFlXcbOl4H7hRwTyc4clPaHTZI6bs',
    appId: '1:299913310200:ios:4855ea3e9126f7d86a700d',
    messagingSenderId: '299913310200',
    projectId: 'musika-player',
    storageBucket: 'musika-player.firebasestorage.app',
    iosBundleId: 'com.example.musika',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDvpexFlXcbOl4H7hRwTyc4clPaHTZI6bs',
    appId: '1:299913310200:ios:4855ea3e9126f7d86a700d',
    messagingSenderId: '299913310200',
    projectId: 'musika-player',
    storageBucket: 'musika-player.firebasestorage.app',
    iosBundleId: 'com.example.musika',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBoYLXsCeWRQubhgvopa8uj6xzpGXrHMG8',
    appId: '1:299913310200:web:e6774e97c5b39f7a6a700d',
    messagingSenderId: '299913310200',
    projectId: 'musika-player',
    authDomain: 'musika-player.firebaseapp.com',
    storageBucket: 'musika-player.firebasestorage.app',
  );
}
