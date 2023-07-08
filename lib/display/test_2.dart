import 'package:flutter/material.dart';

class Test2Display extends StatefulWidget {
  const Test2Display({Key? key}) : super(key: key);

  @override
  State<Test2Display> createState() => _Test2DisplayState();
}

class _Test2DisplayState extends State<Test2Display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test 2: State Management'),
      ),
      body: Column(
        children: [
          Card(
            child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Map<String, String>>[
                    {'title': 'User', 'total': 0.toString()},
                    ...UserType.values.map((e) =>
                        {'title': e.toShortString(), 'total': 0.toString()})
                  ]
                      .map<Widget>((e) => Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5.0,
                            ),
                            child: Column(
                              children: [
                                Text(e['title']!),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(e['total']!),
                              ],
                            ),
                          ))
                      .toList(),
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: Colors.black,
              height: 2,
              indent: 5,
              endIndent: 5,
            ),
          ),
          Card(
            child: const ListTile(
              leading: Icon(Icons.person, size: 45),
              title: Text('Nama User'),
              subtitle: Text('Tipe user'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
    ;
  }
}

enum UserType { admin, operator }

extension ParseToString on UserType {
  String toShortString() {
    switch (this) {
      case UserType.admin:
        return 'Admin';
      case UserType.operator:
        return 'Operator';
    }
  }
}
