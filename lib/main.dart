import 'package:flutter/material.dart';
import 'package:pro_1/shared/logic/helper_methods.dart';
import 'counter/view.dart';
import 'shared/logic/cache_helper.dart';
import 'splash/view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hadith App',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      home: const SplashScreen(),
    );
  }
}
