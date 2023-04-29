import 'package:flutter/material.dart';
import 'method1_hyperlinks.dart';
import 'method2_hyperlinks.dart';

const String _appTitle = 'Hyperlinks';

var hyperlinksNavRoutes = <String, WidgetBuilder>{
  'first_screen': (context) => const MyHomePage(),
  'method1_hyperlinks': (context) => const Method1Display(),
  'method2_hyperlinks': (context) => const Method2Display(),
};

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'first_screen',
      routes: hyperlinksNavRoutes,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_appTitle),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'method1_hyperlinks');
              },
              child: const Text('Method 1 Hyperlinks'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'method2_hyperlinks');
              },
              child: const Text('Method 2 Hyperlinks'),
            ),
          ),
        ],
      ),
    );
  }
}


