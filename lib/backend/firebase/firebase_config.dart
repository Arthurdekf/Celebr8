import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCNH3gnS_Jk4DbnFHbWJFHhvW2orBdQ28o",
            authDomain: "celebr8-ypdb84.firebaseapp.com",
            projectId: "celebr8-ypdb84",
            storageBucket: "celebr8-ypdb84.firebasestorage.app",
            messagingSenderId: "815155476174",
            appId: "1:815155476174:web:9c275099e9fd7a3197429f",
            measurementId: "G-DB17J8KYLX"));
  } else {
    await Firebase.initializeApp();
  }
}
