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
    apiKey: 'AIzaSyBTidqu8UfJJEPgTpEgzh9Pb3mD6tdfUAw',
    appId: '1:465402517501:web:d472fc0e86b0c9c88e2b94',
    messagingSenderId: '465402517501',
    projectId: 'bts-alert-28602',
    authDomain: 'bts-alert-28602.firebaseapp.com',
    storageBucket: 'bts-alert-28602.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDOyU98VZKSikQzMjtfXYLtF2GLAFlgYRI',
    appId: '1:465402517501:android:db77763ed5f0b5f28e2b94',
    messagingSenderId: '465402517501',
    projectId: 'bts-alert-28602',
    storageBucket: 'bts-alert-28602.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCXcoCW6GeQoGSBIKU118aFpmmnz9sYsDk',
    appId: '1:465402517501:ios:9f7dc07331becdbd8e2b94',
    messagingSenderId: '465402517501',
    projectId: 'bts-alert-28602',
    storageBucket: 'bts-alert-28602.appspot.com',
    iosClientId: '465402517501-n0d0cr2s7m3ceavtn2a573a5e3lij83p.apps.googleusercontent.com',
    iosBundleId: 'com.example.btsAlert',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCXcoCW6GeQoGSBIKU118aFpmmnz9sYsDk',
    appId: '1:465402517501:ios:9f7dc07331becdbd8e2b94',
    messagingSenderId: '465402517501',
    projectId: 'bts-alert-28602',
    storageBucket: 'bts-alert-28602.appspot.com',
    iosClientId: '465402517501-n0d0cr2s7m3ceavtn2a573a5e3lij83p.apps.googleusercontent.com',
    iosBundleId: 'com.example.btsAlert',
  );
}
