import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:phlab/splash/start_page.dart';
import 'package:phlab/stores/home_store.dart';

import 'home/home_page.dart';

final HomeStore storeHome = GetIt.I<HomeStore>();

void main() {
  setupLocates();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

void setupLocates() {
  GetIt.I.registerSingleton(HomeStore());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'phLab',
      initialRoute: '/splash',
      routes: {
        '/splash' : (context) => StartPage(),
        '/home' : (context) => HomePage(),
      },
    );
  }
}
