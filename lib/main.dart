import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test1/core/constants/constant.dart';
import 'package:test1/features/home/views/home_view.dart';
import 'package:test1/model/note_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NoteModelAdapter());
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
      darkTheme:
          ThemeData(
            useMaterial3: true,
            brightness: .dark,
            scaffoldBackgroundColor: Color(0xff303030),
          ).copyWith(
            iconButtonTheme: IconButtonThemeData(
              style: IconButton.styleFrom(foregroundColor: Colors.white),
            ),
            textTheme: ThemeData(brightness: .dark, fontFamily: 'Poppins')
                .textTheme
                .apply(bodyColor: Colors.white, displayColor: Colors.white),
          ),
    );
  }
}
