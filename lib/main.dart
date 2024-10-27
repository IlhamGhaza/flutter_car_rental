import 'package:flutter/material.dart';
import 'package:flutter_car_rental/pages/onboarding/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          titleMedium: GoogleFonts.barlow(
            fontSize: 18,
            height: 1.1,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          bodyLarge: GoogleFonts.barlow(
            fontSize: 20,
            color: Colors.white,
            height: 1.1,
          ),
          bodyMedium: GoogleFonts.barlow(
            fontSize: 16,
            height: 1.1,
            color: Colors.white,
          ),
          titleLarge: GoogleFonts.barlow(
            fontSize: 25,
            height: 1.1,
            color: Colors.black,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          onPrimary: const Color(0xFF2C2B34),
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
