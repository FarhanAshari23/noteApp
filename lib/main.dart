import 'package:flutter/material.dart';
import 'package:note_app/models/note_database.dart';
import 'package:note_app/pages/note_page.dart';
import 'package:note_app/pages/profile.dart';
import 'package:note_app/pages/setting_page.dart';
import 'package:note_app/pages/splash.dart';
import 'package:note_app/pages/users.dart';
import 'package:note_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.initialize();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => NoteDatabase()),
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScrenn(),
        '/home': (context) => const NotePage(),
        '/setting': (context) => const SettingPage(),
        '/users': (context) => const UsersPage(),
        '/profile': (context) => const ProfilePage(),
      },
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
