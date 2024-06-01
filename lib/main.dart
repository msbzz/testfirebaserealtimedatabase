import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:testfirebaserealtimedatabase/firebase_options.dart';
import 'package:testfirebaserealtimedatabase/login_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await dotenv.load(fileName: "assets/.env");
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}