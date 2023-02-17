import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA8ihC4TYDzXyK7SY7i5Bvd3aFHSWVszis",
            authDomain: "pricemart23-fc3a2.firebaseapp.com",
            projectId: "pricemart23-fc3a2",
            storageBucket: "pricemart23-fc3a2.appspot.com",
            messagingSenderId: "1098847609913",
            appId: "1:1098847609913:web:7e0323fb9e7c688d6199e8",
            measurementId: "G-SRXGJPLWPH"));
  } else {
    await Firebase.initializeApp();
  }
}
