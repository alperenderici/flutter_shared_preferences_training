import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            TextFormField(
              decoration:
              const InputDecoration(
                hintText: 'Name',
                labelText: 'Name',
              ),
              controller: null,
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              decoration:
              const InputDecoration(
                hintText: 'Surname',
                labelText: 'Surname',
              ),
              controller: null,
              textInputAction: TextInputAction.next,
            ),
            DateTimePicker(
              initialValue: DateTime.now().to,
            ),
          ],
        ),
      ),
    );
  }
}
