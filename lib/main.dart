import 'package:flutter/material.dart';
import 'package:test1/features/home/views/home_view.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
      debugShowCheckedModeBanner: false,
      themeMode: .dark,
      darkTheme: ThemeData(useMaterial3: true, brightness: .dark).copyWith(
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(foregroundColor: Colors.white),
        ),
        textTheme: ThemeData(
          brightness: .dark,
        ).textTheme.apply(bodyColor: Colors.white, displayColor: Colors.white),
      ),
    );
  }
}
