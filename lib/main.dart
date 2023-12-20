import 'package:flutter/material.dart';
import 'package:sir_jitendra_project/providers/card_provider.dart';
import './Views/nav_screens/main_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CardProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Sir_Jitendra App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: MainScreen(),
      ),
    );
  }
}
