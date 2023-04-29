//imports
import 'package:flutter/material.dart';
import 'method1_hyperlinks.dart';

const String _appTitle = 'Hyperlinks';

var hyperlinksNavRoutes = <String, WidgetBuilder>{

  // in main.dart
  'first_screen' : (context) => const MyHomePage(),

  // add other screens here !!!
};

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      // Remove the debug banner
      debugShowCheckedModeBanner: false,

      title: _appTitle,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: 'first_screen',
      routes: hyperlinksNavRoutes,
    );

  }
}   // end of MyApp

class MyHomePage extends StatelessWidget {

  const MyHomePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(_appTitle),
      ), // AppBar


      body: const Method1Display(),

    ); // Scaffold

  }

}  // end of MyHomePage
