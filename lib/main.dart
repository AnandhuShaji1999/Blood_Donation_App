import 'package:blood_donation_app/firebase_options.dart';
import 'package:blood_donation_app/project1/Singup.dart';
import 'package:blood_donation_app/project1/add.dart';
import 'package:blood_donation_app/project1/home.dart';
import 'package:blood_donation_app/project1/loginpage.dart';
import 'package:blood_donation_app/project1/update.dart';
import 'package:blood_donation_app/service/authservice.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/add': (context) => AddUser(),
        '/update': (context) => UpdateDonar(),
        '/register':(context)=>Singup(),
        '/login':(context)=>Loginpage(),
      },
      initialRoute: '/register',
    );
  }
 
}
