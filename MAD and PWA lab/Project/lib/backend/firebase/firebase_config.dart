import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDNjgS480XwRT-QzNYIIU1FIugQvwEib8g",
            authDomain: "story-wimin1.firebaseapp.com",
            projectId: "story-wimin1",
            storageBucket: "story-wimin1.appspot.com",
            messagingSenderId: "910021652627",
            appId: "1:910021652627:web:41f01973776332bd5f1d66"));
  } else {
    await Firebase.initializeApp();
  }
}
