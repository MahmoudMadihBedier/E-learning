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
    apiKey: 'AIzaSyDaqdSkNugSUVH0MybvRTAX5xseJFJAb54',
    appId: '1:572110937259:web:40385b90cc6969df75ebee',
    messagingSenderId: '572110937259',
    projectId: 'yippy-aca99',
    authDomain: 'yippy-aca99.firebaseapp.com',
    storageBucket: 'yippy-aca99.appspot.com',
    measurementId: 'G-GGLXYR2N81',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBjuwJggihAVC67D7mkAOQC-LofY0Z5_Rg',
    appId: '1:572110937259:android:2a9a7fd895ff780475ebee',
    messagingSenderId: '572110937259',
    projectId: 'yippy-aca99',
    storageBucket: 'yippy-aca99.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB8pQXMrX0eOloXMcXPPWFdW1lAR-YirEw',
    appId: '1:572110937259:ios:82a661cefdf0cbd675ebee',
    messagingSenderId: '572110937259',
    projectId: 'yippy-aca99',
    storageBucket: 'yippy-aca99.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB8pQXMrX0eOloXMcXPPWFdW1lAR-YirEw',
    appId: '1:572110937259:ios:82a661cefdf0cbd675ebee',
    messagingSenderId: '572110937259',
    projectId: 'yippy-aca99',
    storageBucket: 'yippy-aca99.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDaqdSkNugSUVH0MybvRTAX5xseJFJAb54',
    appId: '1:572110937259:web:22d4c0201361c6e275ebee',
    messagingSenderId: '572110937259',
    projectId: 'yippy-aca99',
    authDomain: 'yippy-aca99.firebaseapp.com',
    storageBucket: 'yippy-aca99.appspot.com',
    measurementId: 'G-EWFYSZJQ2K',
  );
}