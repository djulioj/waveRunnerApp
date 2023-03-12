import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCvSMMzMcI1XVpx7koOn1zaGIzBECZ0F3A",
            authDomain: "waverunner-c1c54.firebaseapp.com",
            projectId: "waverunner-c1c54",
            storageBucket: "waverunner-c1c54.appspot.com",
            messagingSenderId: "399781254737",
            appId: "1:399781254737:web:70a2d0b293d948ac2fca70",
            measurementId: "G-3CWG7EPP17"));
  } else {
    await Firebase.initializeApp();
  }
}
