import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'di/Injector.dart';
import 'features/quote/presentation/views/quote_screen.dart';
import 'observers.dart';

void main() => runMain();

Future<void> runMain() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSingletons();
  provideDataSources();
  provideRepositories();
  provideUseCases();
  // Setting Device Orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(ProviderScope(
    observers: [
      Observers(),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const QuoteScreen(),
    );
  }
}
