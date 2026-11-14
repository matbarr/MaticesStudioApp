import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAQgG4Fs6e4dTBy2_21kq06ngx4vhL58pw",
            authDomain: "matices-studio-app-g4mx7a.firebaseapp.com",
            projectId: "matices-studio-app-g4mx7a",
            storageBucket: "matices-studio-app-g4mx7a.firebasestorage.app",
            messagingSenderId: "819189256732",
            appId: "1:819189256732:web:6c72a5293bf8d4949985d9",
            measurementId: "G-HLCRVF2V7R"));
  } else {
    await Firebase.initializeApp();
  }
}
