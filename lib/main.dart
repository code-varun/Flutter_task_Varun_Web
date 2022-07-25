import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:metacraftio/Screens/auth/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: 'AIzaSyDao27OEqtckzD5mKceZlALc5H1y0h_s9c',
      appId: '1:750046481649:web:805070269ec5884c8ced50',
      messagingSenderId: '750046481649',
      projectId: 'metacraftio',
      storageBucket: 'metacraftio.appspot.com',
    ));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'VarunTask',
        theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
        home: LoginPage());
  }
}
