import 'package:flutter/material.dart';
import 'package:rec/display/test_2.dart';

class NewUserDisplay extends StatefulWidget {
  const NewUserDisplay({Key? key}) : super(key: key);

  @override
  State<NewUserDisplay> createState() => _NewUserDisplayState();
}

class _NewUserDisplayState extends State<NewUserDisplay> {
  UserType? selectedType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input New User'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter user name',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SegmentedButton<UserType>(
                  segments: UserType.values
                      .map<ButtonSegment<UserType>>(
                        (e) => ButtonSegment<UserType>(
                          value: e,
                          label: Text(e.toShortString()),
                        ),
                      )
                      .toList(),
                  selected: const <UserType>{UserType.admin},
                  onSelectionChanged: (Set<UserType> newSelection) {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              child: Text('Submit'),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
