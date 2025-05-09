import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:talkany/chat_page.dart';
import 'package:talkany/home_page.dart';
import 'package:talkany/login_page.dart';
import 'package:talkany/online_users_page.dart';
import 'package:talkany/sign_in_page.dart';
import 'firebase_options.dart';
Future<void> main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
   );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Talk to Strangers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SignInPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/onlineUsers': (context) => OnlineUsersPage(),
        '/chat': (context) => ChatPage(otherUser: ModalRoute.of(context)!.settings.arguments as String),
      },
    );
  }
}

