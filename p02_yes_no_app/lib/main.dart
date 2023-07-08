import 'package:flutter/material.dart';
import 'package:p02_yes_no_app/config/theme/app_theme.dart';
import 'package:p02_yes_no_app/presentation/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 4).theme(),
        title: 'Yes No App',
        home: const ChatScreen());
  }
}