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
    apiKey: 'AIzaSyDo2wAN4DfznTBWBn7dnG9jh2CAn4QgQ5w',
    appId: '1:356566331707:web:356715b2574668adf6c71e',
    messagingSenderId: '356566331707',
    projectId: 'crudfirebase-5656a',
    authDomain: 'crudfirebase-5656a.firebaseapp.com',
    storageBucket: 'crudfirebase-5656a.firebasestorage.app',
    measurementId: 'G-1K3CN371JR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD4s1XUaKr21DEdUgCynO1dy6ND2fw3xUk',
    appId: '1:356566331707:android:f032503c7aebd62df6c71e',
    messagingSenderId: '356566331707',
    projectId: 'crudfirebase-5656a',
    storageBucket: 'crudfirebase-5656a.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDo2wAN4DfznTBWBn7dnG9jh2CAn4QgQ5w',
    appId: '1:356566331707:web:2ccf20e0a698dc40f6c71e',
    messagingSenderId: '356566331707',
    projectId: 'crudfirebase-5656a',
    authDomain: 'crudfirebase-5656a.firebaseapp.com',
    storageBucket: 'crudfirebase-5656a.firebasestorage.app',
    measurementId: 'G-3D2LT8QM6R',
  );
}
