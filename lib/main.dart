import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screltask/controller/controller.dart';
import 'package:screltask/controller/splashcontroller.dart';
import 'package:screltask/view/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SplashProvider()),
        ChangeNotifierProvider(create: (context) => UserProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: const SplashScreen(),
      ),
    );
  }
}
