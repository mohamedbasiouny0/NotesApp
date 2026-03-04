import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test1/core/constants/constant.dart';
import 'package:test1/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:test1/cubits/get_note/get_note_cubit.dart';

import 'package:test1/features/home/views/home_view.dart';
import 'package:test1/model/note_model.dart';
import 'package:test1/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetNoteCubit()..getAllNotes()),
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
