// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDhO3DBpOutexP0w1wbJ-Bi-0MQgP0KZTU',
    appId: '1:80392971548:web:402a9425a02f720a9c46d9',
    messagingSenderId: '80392971548',
    projectId: 'bloc-test-70d44',
    authDomain: 'bloc-test-70d44.firebaseapp.com',
    storageBucket: 'bloc-test-70d44.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA4_3-Nzsi_J-vpudxQ6tb-dRR4RwHPA5w',
    appId: '1:80392971548:android:fc14c98c68cacdd19c46d9',
    messagingSenderId: '80392971548',
    projectId: 'bloc-test-70d44',
    storageBucket: 'bloc-test-70d44.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDKd1DbPqxOPXN45I3xcYhcyN7ayHioENE',
    appId: '1:80392971548:ios:7382ea3c3368d3899c46d9',
    messagingSenderId: '80392971548',
    projectId: 'bloc-test-70d44',
    storageBucket: 'bloc-test-70d44.appspot.com',
    iosClientId: '80392971548-m1l8fm2epbr5n5t13abkdk3600mjharp.apps.googleusercontent.com',
    iosBundleId: 'com.example.blocTest',
  );
}