import 'package:flutter/material.dart';

class Test1Display extends StatelessWidget {
  const Test1Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test 1: Navigation'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child:
            const Text('Make button on this page, to navigate to first page.'),
      ),
    );
  }
}
