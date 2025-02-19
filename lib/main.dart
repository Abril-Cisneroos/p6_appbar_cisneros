import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Cisneros flutter',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Cisneros AppBar'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var appBar2 = AppBar(
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {}, // l que esta entre llaves son acciones
        ),
        IconButton(
          icon: Icon(
            Icons.more_vert,
          ),
          onPressed: () {},
        )
      ],

      backgroundColor: Color(0xffc296ca),

      // The title text which will be shown on the action bar
      title: Text(title),
      leading: const Icon(Icons.access_time),
      centerTitle: true,
    );
    return Scaffold(
      appBar: appBar2,
      body: Center(
        child: Text(
          'Hola Frida Abril Cisneros Hernandez con AppBar',
        ),
      ),
    );
  }
}
