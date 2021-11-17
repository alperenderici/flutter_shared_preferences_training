import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
              initialValue: DateTime.now().toString(),
              firstDate: DateTime(1914),
              lastDate: DateTime(2100),
              dateLabelText: 'Birthday',
              onChanged: null,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.save), 
              label: const Text('Save'),
              onPressed: null, 
              ),
              Padding(
                padding: EdgeInsets.only(top:50),
                child: Container(
                  height: 300,
                  color: Colors.yellow[],
                ),
                ),
          ],
        ),
      ),
    );
  }
}
