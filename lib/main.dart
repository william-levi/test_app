import 'package:flutter/material.dart';
import 'package:test_app/screen/details.dart';
import 'package:test_app/screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      initialRoute: "/home",
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/home": (BuildContext context) => new HomeScreen(),
        "/details": (BuildContext context) => new DummyDetails(ModalRoute.of(context).settings.arguments)

    });
  }
}


