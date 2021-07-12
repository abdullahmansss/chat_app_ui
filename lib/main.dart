import 'package:chat_app_ui/modules/chats/chats_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[300],
        primarySwatch: Colors.blue,
      ),
      home: ChatsScreen(),
    );
  }
}