import 'package:contadorwear/count/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AmbientMode(
        child: const CounterPage(),
        builder: (context, mode, child) {
          ///title: 'Flutter Demo',
          return MaterialApp(
            theme: ThemeData(
              visualDensity: VisualDensity.compact,
              useMaterial3: true,
              colorScheme: mode == WearMode.active
                  ? const ColorScheme.dark(primary: Color(0xFF00B5FF))
                  : const ColorScheme.dark(
                      primary: Colors.white24,
                      onBackground: Colors.white10,
                      onSurface: Colors.white10),
            ),
            //primarySwatch: Colors.blue,
            home: child,
          );
        });
  }
}
