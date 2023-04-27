import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_auth_app/routes/routes.dart';

import 'package:firebase_auth_app/screens/login_screen.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const HomePage(),
      /*initialRoute: _auth.currentUser != null
          ? ChatScreen.screenRoute
          : LoginScreen.screenRoute,
*/
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
