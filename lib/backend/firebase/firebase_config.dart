import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA5h1WCWgUWk4ZUMHGwrf7TxhxDkh6pWWY",
            authDomain: "easy-market-9aagwk.firebaseapp.com",
            projectId: "easy-market-9aagwk",
            storageBucket: "easy-market-9aagwk.appspot.com",
            messagingSenderId: "195825649457",
            appId: "1:195825649457:web:946e47a2df1a6e31e1d210"));
  } else {
    await Firebase.initializeApp();
  }
}
