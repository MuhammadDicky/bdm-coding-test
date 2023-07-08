import 'package:flutter/material.dart';
import 'package:rec/display/new_user.dart';
import 'package:rec/display/test_1.dart';
import 'package:rec/display/test_2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'BDM - Flutter Coding Test';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        '/test_1': (context) => Test1Display(),
        '/test_2': (context) => Test2Display(),
        '/new_user': (context) => NewUserDisplay(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ButtonNav> testCase = [
    ButtonNav(
      routeName: 'test_1',
      label: 'Navigation',
    ),
    ButtonNav(routeName: 'test_2', label: 'State Management'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BDM Flutter Coding Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: testCase
              .asMap()
              .map(
                (i, e) => MapEntry(
                  i,
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('${i + 1}. ${e.label}'),
                    ),
                  ),
                ),
              )
              .entries
              .map<Widget>((e) => e.value)
              .toList(),
        ),
      ),
    );
  }
}

class ButtonNav {
  ButtonNav({
    required this.routeName,
    required this.label,
  });

  final String routeName;
  final String label;

  int visit = 0;

  void goTo(BuildContext context) {}
}
